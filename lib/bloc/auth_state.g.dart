// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthStateCWProxy {
  AuthState isLogin(bool isLogin);

  AuthState user(User? user);

  AuthState status(AuthStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthState call({
    bool? isLogin,
    User? user,
    AuthStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthState.copyWith.fieldName(...)`
class _$AuthStateCWProxyImpl implements _$AuthStateCWProxy {
  const _$AuthStateCWProxyImpl(this._value);

  final AuthState _value;

  @override
  AuthState isLogin(bool isLogin) => this(isLogin: isLogin);

  @override
  AuthState user(User? user) => this(user: user);

  @override
  AuthState status(AuthStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthState call({
    Object? isLogin = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return AuthState(
      isLogin: isLogin == const $CopyWithPlaceholder() || isLogin == null
          ? _value.isLogin
          // ignore: cast_nullable_to_non_nullable
          : isLogin as bool,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as User?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as AuthStatus,
    );
  }
}

extension $AuthStateCopyWith on AuthState {
  /// Returns a callable class that can be used as follows: `instanceOfAuthState.copyWith(...)` or like so:`instanceOfAuthState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthStateCWProxy get copyWith => _$AuthStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthState _$AuthStateFromJson(Map<String, dynamic> json) => AuthState(
      isLogin: json['isLogin'] as bool? ?? false,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$AuthStatusEnumMap, json['status']) ??
          AuthStatus.init,
    );

Map<String, dynamic> _$AuthStateToJson(AuthState instance) => <String, dynamic>{
      'isLogin': instance.isLogin,
      'user': instance.user,
      'status': _$AuthStatusEnumMap[instance.status]!,
    };

const _$AuthStatusEnumMap = {
  AuthStatus.init: 'init',
  AuthStatus.loading: 'loading',
  AuthStatus.success: 'success',
  AuthStatus.error: 'error',
};
