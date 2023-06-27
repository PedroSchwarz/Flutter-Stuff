import 'package:core_shared/network/network_client.dart';

class ValidateUserUseCase {
  final NetworkClient _client;

  ValidateUserUseCase(this._client);

  Future<bool> execute() async {
    await Future.delayed(const Duration(seconds: 1));
    return false;
  }
}
