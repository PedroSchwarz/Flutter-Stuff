import 'package:auth/features/login/routes/routes.dart';
import 'package:auth/features/splash/routes/routes.dart';
import 'package:core_shared/core_shared.dart';

class AuthModule extends Module {
  static const String moduleName = '/auth';

  static LoginRoutes loginRoutes = LoginRoutes(moduleName);

  static SplashRoutes splashRoutes = SplashRoutes(moduleName);

  @override
  List<ModularRoute> get routes => [
        ...loginRoutes.getRoutes(),
        ...splashRoutes.getRoutes(),
      ];
}
