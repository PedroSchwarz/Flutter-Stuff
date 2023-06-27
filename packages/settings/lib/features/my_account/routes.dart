import 'package:core_shared/core_shared.dart';
import 'package:settings/features/my_account/my_account_page.dart';

class MyAccountRoutes extends FeatureRoutes {
  MyAccountRoutes(super.moduleName);

  late AppRoute myAccount = AppRoute(
    moduleName: moduleName,
    path: '/my-account',
  );

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(
          myAccount.path,
          child: (context, args) => const MyAccountPage(),
          transition: TransitionType.fadeIn,
        )
      ];
}
