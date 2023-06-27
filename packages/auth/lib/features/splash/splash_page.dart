import 'package:auth/features/splash/bloc/splash_bloc.dart';
import 'package:auth/features/splash/bloc/splash_event.dart';
import 'package:auth/features/splash/bloc/splash_state.dart';
import 'package:auth/routes/routes.dart';
import 'package:core_shared/core_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logged_area/routes.dart';
import 'package:theme/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          CoreInjection.locator.get<SplashBloc>()..add(SplashStarted()),
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: BlocListener(
        bloc: BlocProvider.of<SplashBloc>(context),
        listener: (_, state) {
          if (state is SplashUnauthorized) {
            LoggedAreaModule.tabsRoutes.tabs.pushAndRemoveUntil();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            ElevatedButton(
              onPressed: () {
                AuthModule.loginRoutes.login.push();
              },
              child: const Text('continue'),
            ),
          ],
        ),
      ),
    );
  }
}
