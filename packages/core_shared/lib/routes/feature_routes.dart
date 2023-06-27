import 'package:flutter_modular/flutter_modular.dart';

abstract class FeatureRoutes {
  final String moduleName;

  FeatureRoutes(this.moduleName);

  List<ChildRoute> getRoutes();
}
