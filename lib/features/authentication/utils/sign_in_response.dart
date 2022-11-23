import 'package:danshulgin_login/features/authentication/models/user_authentication_model/user_authentication_model.dart';

abstract class SignInResponse {}

abstract class SignUpResponse {}

//Email sign in part
abstract class EmailSignInResponse extends SignInResponse {}

class EmailSignInSuccessfullResponse extends EmailSignInResponse {
  EmailSignInSuccessfullResponse(this.userAuthneticationModel);
  final UserAuthneticationModel userAuthneticationModel;
}

class EmailSignInWrongEmailOrPasswordResponse extends EmailSignInResponse {}

class EmailSignInInternalServerErrorResponse extends EmailSignInResponse {}
//Email sign in part

//////////

//Email sign up part
abstract class EmailSignUpResponse extends SignUpResponse {}

class EmailSignUpSuccessfullResponse extends EmailSignUpResponse {
  EmailSignUpSuccessfullResponse(this.userAuthneticationModel);
  final UserAuthneticationModel userAuthneticationModel;
}
//Email sign in part


//Add other sign in provider methods like google, apple etc.