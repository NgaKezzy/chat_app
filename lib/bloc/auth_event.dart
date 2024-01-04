// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class CheckLogin extends AuthEvent {
  final String newUserName;
  final String newPassword;
  const CheckLogin({
    this.newUserName = '',
    this.newPassword = '',
  });
}

class LogOut extends AuthEvent {}

class Register extends AuthEvent {
  final String newFirstName;
  final String newLastName;
  final String newUserName;
  final String newEmail;
  final int newContactNumber;
  final String newPassword;
  final String newConfirmPassword;

  const Register(
      {this.newFirstName = '',
      this.newLastName = '',
      this.newUserName = '',
      this.newEmail = '',
      this.newContactNumber = 0,
      this.newPassword = '',
      this.newConfirmPassword = ''});
}
