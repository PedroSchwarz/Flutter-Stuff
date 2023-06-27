import 'package:flutter_modular/flutter_modular.dart';

class AppRoute {
  final String moduleName;
  final String path;

  const AppRoute({required this.moduleName, required this.path});

  push({dynamic arguments}) {
    Modular.to.pushNamed('$moduleName$path', arguments: arguments);
  }

  pushAndRemoveUntil({dynamic arguments}) {
    Modular.to.pushNamedAndRemoveUntil(
      '$moduleName$path',
      (p0) => false,
      arguments: arguments,
    );
  }

  replaceWith({dynamic arguments}) {
    Modular.to.pushReplacementNamed('$moduleName$path', arguments: arguments);
  }

  pushTabChild({required String parentName, dynamic arguments}) {
    Modular.to.navigate(
      '$parentName$moduleName$path',
      arguments: arguments,
    );
  }
}
