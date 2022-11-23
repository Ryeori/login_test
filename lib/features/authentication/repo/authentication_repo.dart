import 'dart:math';

import 'package:danshulgin_login/features/authentication/models/user_authentication_model/user_authentication_model.dart';
import 'package:danshulgin_login/features/authentication/utils/authentication_strategy.dart';
import 'package:danshulgin_login/features/authentication/utils/sign_in_response.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class AuthenticationRepo {
  Future<EmailSignInResponse> signInWithEmail(
      {required String email, required String password}) async {
    try {
      return _fakeEmailSignIn(email: email, password: password);
    } catch (e) {
      print(e);
      return EmailSignInInternalServerErrorResponse();
    }
  }

  Future<EmailSignInResponse> _fakeEmailSignIn(
      {required String email, required String password}) async {
    final random = Random();

    await Future.delayed(Duration(seconds: random.nextInt(3) + 2));

    //EmailSignInResponse max amout (successfull, error etc) -1
    final generatedResponse = random.nextInt(2);
    switch (generatedResponse) {
      case 0:
        return EmailSignInSuccessfullResponse(
          UserAuthneticationModel(
            id: 'userId',
            email: email,
            authenticationStrategy: AuthenticationStrategy.email,
          ),
        );

      case 1:
        return EmailSignInWrongEmailOrPasswordResponse();
      default:
        return EmailSignInInternalServerErrorResponse();
    }
  }

  Future<EmailSignInResponse> signUpWithEmail({
    required String email,
    required String password,
    required String repeatedPassword,
  }) async {
    try {
      return _fakeEmailSignUp(email: email, password: password);
    } catch (e) {
      print(e);
      return EmailSignInInternalServerErrorResponse();
    }
  }

  Future<EmailSignInResponse> _fakeEmailSignUp(
      {required String email, required String password}) async {
    final random = Random();

    await Future.delayed(Duration(seconds: random.nextInt(3) + 2));

    return EmailSignInSuccessfullResponse(
      UserAuthneticationModel(
        id: 'userId',
        email: email,
        authenticationStrategy: AuthenticationStrategy.email,
      ),
    );
  }
}
