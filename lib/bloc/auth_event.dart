// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:chat_app/models/user.dart';
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
  final User newUser;

  const Register(
      {this.newUser =
          const User(firstName: '', lastName: '', password: '', userName: '')});
}
