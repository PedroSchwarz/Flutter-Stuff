import 'package:core_shared/core_shared.dart';
import 'package:home/features/details/routes.dart';
import 'package:home/features/home/routes.dart';

class HomeModule extends Module {
  static const String moduleName = '/home';

  static HomeRoutes homeRoutes = HomeRoutes(moduleName);
  static DetailsRoutes detailsRoutes = DetailsRoutes(moduleName);

  @override
  List<ModularRoute> get routes => [
        ...homeRoutes.getRoutes(),
        ...detailsRoutes.getRoutes(),
      ];
}
