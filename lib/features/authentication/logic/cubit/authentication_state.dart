part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.signedIn(
      {required UserAuthneticationModel userAuthneticationModel}) = _SignedIn;
  const factory AuthenticationState.signedOut() = _SignedOut;
  const factory AuthenticationState.error({required String message}) = _Error;
}
