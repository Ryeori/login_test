import 'package:danshulgin_login/features/authentication/utils/authentication_strategy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_authentication_model.freezed.dart';

@Freezed()
class UserAuthneticationModel with _$UserAuthneticationModel {
  const factory UserAuthneticationModel({
    required String id,
    required String email,
    required AuthenticationStrategy authenticationStrategy,
  }) = _UserAuthneticationModel;
}
