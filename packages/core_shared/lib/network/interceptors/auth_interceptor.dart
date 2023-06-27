import 'package:core_shared/local_storage/local_storage_manager.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final LocalStorageManager _storageManager;

  AuthInterceptor(this._storageManager);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storageManager.read(LocalStorageKeys.accessToken);
    options.headers['Authorization'] = 'Bearer $token';
    return handler.next(options);
  }
}
