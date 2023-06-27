import 'package:flutter/material.dart';
import 'package:home/routes.dart';
import 'package:theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('home'),
          ElevatedButton(
            onPressed: () {
              HomeModule.detailsRoutes.home.push();
            },
            child: const Text('Go to Details'),
          ),
        ],
      )),
    );
  }
}
