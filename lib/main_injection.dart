import 'package:auth/injection/auth_injection.dart';
import 'package:core_shared/core_shared.dart';
import 'package:home/home.dart';
import 'package:logged_area/injection/logged_area_injection.dart';

class MainInjection {
  static Future<void> initAppDependencies() async {
    await CoreInjection.initCoreDependencies(() {
      HomeModule.homeRoutes.home.pushAndRemoveUntil();
    });
    await initAuthInjection();
    await initLoggedAreaInjection();
  }
}
