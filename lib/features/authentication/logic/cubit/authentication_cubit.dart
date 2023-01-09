import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:danshulgin_login/features/authentication/models/user_authentication_model/user_authentication_model.dart';
import 'package:danshulgin_login/features/authentication/repo/authentication_repo.dart';
import 'package:danshulgin_login/features/authentication/utils/sign_in_response.dart';

part 'authentication_cubit.freezed.dart';
part 'authentication_state.dart';

@Singleton()
class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit(this._authenticationRepo)
      : super(const AuthenticationState.initial());

  final AuthenticationRepo _authenticationRepo;

  Future<void> init() async {
    //Должна проверять текущее состоние пользователя из authenticationRepo, залогинен или нет
  }

  Future<void> signInWithEmail(
      {required String email, required String password}) async {
    emit(const _Loading());
    final emailSignInResponse = await _authenticationRepo.signInWithEmail(
        email: email, password: password);

    _mapAuthStatusToState(emailSignInResponse);
  }

  Future<void> signUpWithEmail(
      {required String email,
      required String password,
      required String repeatedPassword}) async {
    emit(const _Loading());
    final emailSignInResponse = await _authenticationRepo.signUpWithEmail(
        email: email, password: password, repeatedPassword: repeatedPassword);

    _mapAuthStatusToState(emailSignInResponse);
  }

  void _mapAuthStatusToState(SignInResponse signInResponse) {
    //Separate into a function for each signInMethod
    if (signInResponse is EmailSignInResponse) {
      if (signInResponse is EmailSignInSuccessfullResponse) {
        emit(_SignedIn(
            userAuthneticationModel: signInResponse.userAuthneticationModel));
        return;
      } else if (signInResponse is EmailSignInWrongEmailOrPasswordResponse) {
        emit(const _Error(
            message:
                'Неверный email или пароль\nПроверьте их корректность и попробуйте еще раз'));
        return;
      } else if (signInResponse is EmailSignInInternalServerErrorResponse) {
        emit(const _Error(message: 'Ошибка сервера, попробуйте позднее'));
        return;
      } else {
        emit(const _Error(message: 'Неизвестная ошибка, попробуйте позже'));

        return;
      }
    }
  }
}
