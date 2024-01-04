// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserCWProxy {
  User userName(String userName);

  User password(String password);

  User email(String email);

  User contactNumber(int contactNumber);

  User firstName(String firstName);

  User lastName(String lastName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `User(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// User(...).copyWith(id: 12, name: "My name")
  /// ````
  User call({
    String? userName,
    String? password,
    String? email,
    int? contactNumber,
    String? firstName,
    String? lastName,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUser.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUser.copyWith.fieldName(...)`
class _$UserCWProxyImpl implements _$UserCWProxy {
  const _$UserCWProxyImpl(this._value);

  final User _value;

  @override
  User userName(String userName) => this(userName: userName);

  @override
  User password(String password) => this(password: password);

  @override
  User email(String email) => this(email: email);

  @override
  User contactNumber(int contactNumber) => this(contactNumber: contactNumber);

  @override
  User firstName(String firstName) => this(firstName: firstName);

  @override
  User lastName(String lastName) => this(lastName: lastName);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `User(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// User(...).copyWith(id: 12, name: "My name")
  /// ````
  User call({
    Object? userName = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? contactNumber = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
  }) {
    return User(
      userName: userName == const $CopyWithPlaceholder() || userName == null
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String,
      password: password == const $CopyWithPlaceholder() || password == null
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      contactNumber:
          contactNumber == const $CopyWithPlaceholder() || contactNumber == null
              ? _value.contactNumber
              // ignore: cast_nullable_to_non_nullable
              : contactNumber as int,
      firstName: firstName == const $CopyWithPlaceholder() || firstName == null
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String,
      lastName: lastName == const $CopyWithPlaceholder() || lastName == null
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String,
    );
  }
}

extension $UserCopyWith on User {
  /// Returns a callable class that can be used as follows: `instanceOfUser.copyWith(...)` or like so:`instanceOfUser.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserCWProxy get copyWith => _$UserCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      userName: json['userName'] as String? ?? '',
      password: json['password'] as String? ?? '',
      email: json['email'] as String? ?? '',
      contactNumber: json['contactNumber'] as int? ?? 0,
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userName': instance.userName,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'contactNumber': instance.contactNumber,
    };
