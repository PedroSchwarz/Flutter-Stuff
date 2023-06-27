import 'package:auth/routes/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:home/home.dart';
import 'package:logged_area/routes.dart';

class MainModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AuthModule.moduleName, module: AuthModule()),
        ModuleRoute(LoggedAreaModule.moduleName, module: LoggedAreaModule()),
        ModuleRoute(HomeModule.moduleName, module: HomeModule()),
      ];
}
