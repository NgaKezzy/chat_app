import 'package:chat_app/bloc/auth_bloc.dart';
import 'package:chat_app/bloc/auth_event.dart';
import 'package:chat_app/models/user.dart';
import 'package:chat_app/widgets/custom_button_login.dart';
import 'package:chat_app/widgets/input_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    return Padding(
      padding: const EdgeInsets.only(left: 45, right: 45, top: 18),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              InputLogin(controller: firstNameController, title: 'First Name'),
              const SizedBox(
                height: 35,
              ),
              InputLogin(controller: lastNameController, title: 'Last Name'),
              const SizedBox(
                height: 35,
              ),
              InputLogin(controller: userNameController, title: 'User Name'),
              const SizedBox(
                height: 35,
              ),
              InputLogin(
                controller: passwordController,
                title: 'Password',
                isPassword: true,
              ),
              const SizedBox(
                height: 35,
              ),
              InputLogin(
                controller: confirmPasswordController,
                title: 'Confirm Password',
                isPassword: true,
              ),
              const SizedBox(
                height: 35,
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width * 0.55,
                textButton: 'Create Account',
                callback: () {
                  if (_formKey.currentState!.validate()) {
                    if (passwordController.text ==
                        confirmPasswordController.text) {
                      authBloc.add(Register(
                          newUser: User(
                        firstName: firstNameController.text.trim(),
                        lastName: lastNameController.text.trim(),
                        password: passwordController.text.trim(),
                        userName: userNameController.text.trim(),
                      )));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Mật khẩu không trùng nhau!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 14.0);
                    }
                  }
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
