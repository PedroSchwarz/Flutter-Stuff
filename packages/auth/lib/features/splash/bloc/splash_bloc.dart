import 'package:auth/features/splash/bloc/splash_event.dart';
import 'package:auth/features/splash/bloc/splash_state.dart';
import 'package:auth/features/splash/use_case/validate_user_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ValidateUserUseCase _validateUserUseCase;

  SplashBloc(this._validateUserUseCase) : super(SplashInitial()) {
    on<SplashStarted>(
      (event, emit) async {
        try {
          final result = await _validateUserUseCase.execute();
          if (result) {
            emit(SplashInitial());
          } else {
            emit(SplashUnauthorized());
          }
        } catch (ex) {
          emit(SplashUnauthorized());
        }
      },
    );
  }
}
