// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_authentication_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuthneticationModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AuthenticationStrategy get authenticationStrategy =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthneticationModelCopyWith<UserAuthneticationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthneticationModelCopyWith<$Res> {
  factory $UserAuthneticationModelCopyWith(UserAuthneticationModel value,
          $Res Function(UserAuthneticationModel) then) =
      _$UserAuthneticationModelCopyWithImpl<$Res, UserAuthneticationModel>;
  @useResult
  $Res call(
      {String id, String email, AuthenticationStrategy authenticationStrategy});
}

/// @nodoc
class _$UserAuthneticationModelCopyWithImpl<$Res,
        $Val extends UserAuthneticationModel>
    implements $UserAuthneticationModelCopyWith<$Res> {
  _$UserAuthneticationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? authenticationStrategy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationStrategy: null == authenticationStrategy
          ? _value.authenticationStrategy
          : authenticationStrategy // ignore: cast_nullable_to_non_nullable
              as AuthenticationStrategy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAuthneticationModelCopyWith<$Res>
    implements $UserAuthneticationModelCopyWith<$Res> {
  factory _$$_UserAuthneticationModelCopyWith(_$_UserAuthneticationModel value,
          $Res Function(_$_UserAuthneticationModel) then) =
      __$$_UserAuthneticationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String email, AuthenticationStrategy authenticationStrategy});
}

/// @nodoc
class __$$_UserAuthneticationModelCopyWithImpl<$Res>
    extends _$UserAuthneticationModelCopyWithImpl<$Res,
        _$_UserAuthneticationModel>
    implements _$$_UserAuthneticationModelCopyWith<$Res> {
  __$$_UserAuthneticationModelCopyWithImpl(_$_UserAuthneticationModel _value,
      $Res Function(_$_UserAuthneticationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? authenticationStrategy = null,
  }) {
    return _then(_$_UserAuthneticationModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationStrategy: null == authenticationStrategy
          ? _value.authenticationStrategy
          : authenticationStrategy // ignore: cast_nullable_to_non_nullable
              as AuthenticationStrategy,
    ));
  }
}

/// @nodoc

class _$_UserAuthneticationModel implements _UserAuthneticationModel {
  const _$_UserAuthneticationModel(
      {required this.id,
      required this.email,
      required this.authenticationStrategy});

  @override
  final String id;
  @override
  final String email;
  @override
  final AuthenticationStrategy authenticationStrategy;

  @override
  String toString() {
    return 'UserAuthneticationModel(id: $id, email: $email, authenticationStrategy: $authenticationStrategy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAuthneticationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.authenticationStrategy, authenticationStrategy) ||
                other.authenticationStrategy == authenticationStrategy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, authenticationStrategy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAuthneticationModelCopyWith<_$_UserAuthneticationModel>
      get copyWith =>
          __$$_UserAuthneticationModelCopyWithImpl<_$_UserAuthneticationModel>(
              this, _$identity);
}

abstract class _UserAuthneticationModel implements UserAuthneticationModel {
  const factory _UserAuthneticationModel(
          {required final String id,
          required final String email,
          required final AuthenticationStrategy authenticationStrategy}) =
      _$_UserAuthneticationModel;

  @override
  String get id;
  @override
  String get email;
  @override
  AuthenticationStrategy get authenticationStrategy;
  @override
  @JsonKey(ignore: true)
  _$$_UserAuthneticationModelCopyWith<_$_UserAuthneticationModel>
      get copyWith => throw _privateConstructorUsedError;
}
