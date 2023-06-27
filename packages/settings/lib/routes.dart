import 'package:core_shared/core_shared.dart';
import 'package:settings/features/my_account/routes.dart';

class SettingsModule extends Module {
  static const String moduleName = '/settings';

  static MyAccountRoutes myAccountRoutes = MyAccountRoutes(moduleName);

  @override
  List<ModularRoute> get routes => [...myAccountRoutes.getRoutes()];
}
