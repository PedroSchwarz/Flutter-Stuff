import 'package:dio/dio.dart';

class DioClientBuilder {
  String baseURL;
  int _connectTimeout = 10000;
  int _receiveTimeout = 10000;

  final List<Interceptor> _interceptors = [];

  DioClientBuilder(this.baseURL);

  DioClientBuilder setConnectTimeout(int connectionTimeout) {
    _connectTimeout = connectionTimeout;
    return this;
  }

  DioClientBuilder setReceiveTimeout(int receiveTimeout) {
    _receiveTimeout = receiveTimeout;
    return this;
  }

  DioClientBuilder addInterceptor(Interceptor interceptor) {
    _interceptors.add(interceptor);
    return this;
  }

  Dio build() {
    final options = BaseOptions(
      baseUrl: baseURL,
      connectTimeout: Duration(milliseconds: _connectTimeout),
      receiveTimeout: Duration(milliseconds: _receiveTimeout),
    );

    var dio = Dio(options);

    for (var interceptor in _interceptors) {
      dio.interceptors.add(interceptor);
    }

    return dio;
  }
}
