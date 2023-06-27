import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkClient {
  final Dio _client;
  final VoidCallback _unauthorizedCallback;

  NetworkClient(
    this._client,
    this._unauthorizedCallback,
  );

  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    int? receiveTimeout,
    int? sendTimeout,
  }) async {
    return _guard(
      () => _client.get(
        path,
        queryParameters: queryParameters,
        options: Options(
          receiveTimeout: _getDuration(receiveTimeout),
          sendTimeout: _getDuration(sendTimeout),
        ),
      ),
    );
  }

  Future<dynamic> post(
    String path, {
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
    int? receiveTimeout,
    int? sendTimeout,
  }) async {
    return _guard(
      () => _client.post(
        path,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          receiveTimeout: _getDuration(receiveTimeout),
          sendTimeout: _getDuration(sendTimeout),
        ),
      ),
    );
  }

  Duration? _getDuration(int? time) {
    if (time != null) return Duration(milliseconds: time);
    return null;
  }

  Future<dynamic> _guard(Future<Response> Function() future) async {
    _unauthorizedCallback.call();
    try {
      final response = await future();
      return response.data;
    } catch (ex) {
      final dioError = ex as DioError;
      if (dioError.response?.statusCode == HttpStatus.unauthorized) {
        _unauthorizedCallback.call();
      }
    }
  }
}
