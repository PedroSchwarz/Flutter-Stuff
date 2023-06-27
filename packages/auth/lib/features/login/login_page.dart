import 'package:core_shared/network/network_client.dart';
import 'package:flutter/material.dart';
import 'package:core_shared/core_shared.dart';
import 'package:theme/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: ElevatedButton(
        child: const Text('fetch'),
        onPressed: () async {
          await CoreInjection.locator.get<NetworkClient>().get('teste');
        },
      ),
    );
  }
}
