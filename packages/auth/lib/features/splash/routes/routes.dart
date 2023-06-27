import 'package:auth/features/splash/splash_page.dart';
import 'package:core_shared/core_shared.dart';

class SplashRoutes extends FeatureRoutes {
  SplashRoutes(super.moduleName);

  late AppRoute splash = AppRoute(moduleName: moduleName, path: '/splash');

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(
          splash.path,
          child: (context, args) => const SplashPage(),
        ),
      ];
}
