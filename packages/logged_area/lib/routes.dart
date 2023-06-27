import 'package:core_shared/core_shared.dart';
import 'package:logged_area/features/tabs/routes.dart';

class LoggedAreaModule extends Module {
  static const String moduleName = '/logged-area';

  static final TabsRoutes tabsRoutes = TabsRoutes(moduleName);

  @override
  List<ModularRoute> get routes => [
        ...tabsRoutes.getRoutes(),
      ];
}
