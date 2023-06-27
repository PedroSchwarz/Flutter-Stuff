import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class LocalStorageManager {
  Future<String?> read(LocalStorageKeys key);

  Future<void> write({required LocalStorageKeys key, required String value});
}

enum LocalStorageKeys {
  accessToken,
  userID,
}

class LocalStorageManagerImpl implements LocalStorageManager {
  final FlutterSecureStorage _secureStorage;

  LocalStorageManagerImpl(this._secureStorage);

  @override
  Future<String?> read(LocalStorageKeys key) async {
    try {
      return await _secureStorage.read(key: key.name);
    } on PlatformException {
      return null;
    }
  }

  @override
  Future<void> write({
    required LocalStorageKeys key,
    required String value,
  }) async {
    try {
      return await _secureStorage.write(key: key.name, value: value);
    } on PlatformException {
      return;
    }
  }
}
