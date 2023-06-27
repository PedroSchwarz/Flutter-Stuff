import 'package:auth/routes/routes.dart';
import 'package:core_shared/core_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stuff/main_injection.dart';
import 'package:flutter_stuff/main_module.dart';
import 'package:theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainInjection.initAppDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(
      AuthModule.moduleName + AuthModule.splashRoutes.splash.path,
    );

    return ModularApp(
      module: MainModule(),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: MyThemeData(brightness: Brightness.light).themeData,
        darkTheme: MyThemeData(brightness: Brightness.dark).themeData,
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser,
      ),
    );
  }
}
