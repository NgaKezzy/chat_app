import 'package:chat_app/bloc/auth_event.dart';
import 'package:chat_app/bloc/auth_state.dart';
import 'package:chat_app/config/print_color.dart';
import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

List<User> users = [
  const User(
      userName: 'ngakezzy',
      password: '11111',
      firstName: 'Ngà',
      lastName: 'Nguyễn')
];

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<CheckLogin>(_checkLogin);
    on<LogOut>(_logOut);
    on<Register>(_register);
  }

  void _checkLogin(CheckLogin event, Emitter emit) {
    emit(state.copyWith(status: AuthStatus.loading));
    printRed(users.length.toString());

    for (var element in users) {
      if (event.newUserName == element.userName &&
          event.newPassword == element.password) {
        emit(state.copyWith(
            user: element, isLogin: true, status: AuthStatus.success));
        Fluttertoast.showToast(
            msg: "Đăng nhập thành công!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 14.0);
        return;
      }
    }
    Fluttertoast.showToast(
        msg: "Tài khoản mật khẩu không chính xác!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14.0);
  }

  void _register(Register event, Emitter emit) {
    bool isRegister = true;

    // kiểm tra mật khẩu và xác nhận mk có trùng nhau ko

    for (var element in users) {
      if (event.newUser.userName == element.userName) {
        // kiểm tra xem tài username đã tồn tịa trong uses chưa
        isRegister = false;
        Fluttertoast.showToast(
            msg: "Tài khoản đã tồn tại !",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 14.0);
      }
    }
    if (isRegister) {
      users.add(event.newUser);
      Fluttertoast.showToast(
          msg: "Đăng ký thành công!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 14.0);
    }
  }

  void _logOut(LogOut event, Emitter emit) {
    emit(state.copyWith(status: AuthStatus.loading));
    emit(
      state.copyWith(status: AuthStatus.success, isLogin: false),
    );
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }
}
