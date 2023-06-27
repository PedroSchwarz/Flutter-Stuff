import 'package:core_shared/core_shared.dart';
import 'package:logged_area/features/tabs/bloc/tabs_bloc.dart';

Future<void> initLoggedAreaInjection() async {
  final locator = CoreInjection.locator;

  locator.registerFactory<TabsBloc>(() => TabsBloc());
}
