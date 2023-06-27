import 'dart:async';

import 'package:core_shared/local_storage/local_storage_manager.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthGuard extends RouteGuard {
  final LocalStorageManager _storageManager;

  AuthGuard(this._storageManager) : super(redirectTo: '/auth/login');

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    final token = await _storageManager.read(LocalStorageKeys.accessToken);
    return token != null;
  }
}
