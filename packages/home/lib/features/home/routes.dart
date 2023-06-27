import 'package:core_shared/core_shared.dart';
import 'package:home/features/home/home_page.dart';

class HomeRoutes extends FeatureRoutes {
  HomeRoutes(super.moduleName);

  late AppRoute home = AppRoute(moduleName: moduleName, path: '/');

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(
          home.path,
          child: (context, args) => const HomePage(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
