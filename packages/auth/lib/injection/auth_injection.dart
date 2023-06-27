import 'package:auth/features/splash/bloc/splash_bloc.dart';
import 'package:auth/features/splash/use_case/validate_user_use_case.dart';
import 'package:core_shared/core_shared.dart';
import 'package:core_shared/network/network_client.dart';

Future<void> initAuthInjection() async {
  final locator = CoreInjection.locator;

  locator.registerLazySingleton<ValidateUserUseCase>(
    () => ValidateUserUseCase(locator.get<NetworkClient>()),
  );

  locator.registerFactory<SplashBloc>(
    () => SplashBloc(locator.get<ValidateUserUseCase>()),
  );
}
