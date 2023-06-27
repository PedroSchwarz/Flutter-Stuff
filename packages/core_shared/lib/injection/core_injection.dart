import 'package:core_shared/routes/auth/auth_guard.dart';
import 'package:core_shared/local_storage/local_storage_manager.dart';
import 'package:core_shared/network/dio_client_builder.dart';
import 'package:core_shared/network/interceptors/auth_interceptor.dart';
import 'package:core_shared/network/network_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

class CoreInjection {
  static GetIt locator = GetIt.instance;

  static Future<void> initCoreDependencies(
    VoidCallback unauthorizedCallback,
  ) async {
    const secureStorage = FlutterSecureStorage();

    locator.registerLazySingleton<LocalStorageManager>(
      () => LocalStorageManagerImpl(secureStorage),
    );

    final dio = DioClientBuilder('https://test')
        .addInterceptor(AuthInterceptor(locator.get<LocalStorageManager>()))
        .build();

    locator.registerLazySingleton<Dio>(() => dio);

    locator.registerLazySingleton<NetworkClient>(
      () => NetworkClient(
        locator.get<Dio>(),
        unauthorizedCallback,
      ),
    );

    locator.registerLazySingleton<AuthGuard>(
      () => AuthGuard(locator.get<LocalStorageManager>()),
    );
  }
}
