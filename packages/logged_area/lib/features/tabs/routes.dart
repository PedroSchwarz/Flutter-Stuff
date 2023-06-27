import 'package:core_shared/core_shared.dart';
import 'package:home/home.dart';
import 'package:logged_area/features/tabs/tabs_page.dart';
import 'package:settings/routes.dart';

class TabsRoutes extends FeatureRoutes {
  TabsRoutes(super.moduleName);

  late AppRoute tabs = AppRoute(moduleName: moduleName, path: '/');

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(
          tabs.path,
          child: (context, args) => const TabsPage(),
          children: [
            ModuleRoute(
              HomeModule.moduleName,
              module: HomeModule(),
            ),
            ModuleRoute(
              SettingsModule.moduleName,
              module: SettingsModule(),
            ),
          ],
        ),
      ];
}
