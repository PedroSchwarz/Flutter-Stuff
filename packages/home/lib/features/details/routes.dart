import 'package:core_shared/core_shared.dart';
import 'package:home/features/details/details_page.dart';

class DetailsRoutes extends FeatureRoutes {
  DetailsRoutes(super.moduleName);

  late AppRoute home = AppRoute(moduleName: moduleName, path: '/details');

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(
          home.path,
          child: (context, args) => const DetailsPage(),
        ),
      ];
}
