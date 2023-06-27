import 'package:auth/features/login/login_page.dart';
import 'package:core_shared/core_shared.dart';

class LoginRoutes extends FeatureRoutes {
  LoginRoutes(super.moduleName);

  late AppRoute login = AppRoute(moduleName: moduleName, path: '/login');

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(login.path, child: (context, args) => const LoginPage()),
      ];
}
