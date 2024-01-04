import 'package:chat_app/bloc/auth_bloc.dart';
import 'package:chat_app/bloc/auth_event.dart';
import 'package:chat_app/bloc/auth_state.dart';
import 'package:chat_app/config/app_size.dart';
import 'package:chat_app/config/print_color.dart';
import 'package:chat_app/home_app.dart';
import 'package:chat_app/widgets/custom_button_login.dart';
import 'package:chat_app/widgets/custom_text_button.dart';
import 'package:chat_app/widgets/input_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({super.key, required this.callback});
  final VoidCallback callback;

  @override
  State<LoginComponent> createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isHidden = false;

  final _formKeyLogin = GlobalKey<FormState>();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = context.read<AuthBloc>();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 40),
            child: Form(
              key: _formKeyLogin,
              child: Column(
                children: [
                  InputLogin(
                    controller: userNameController,
                    title: 'Email',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InputLogin(
                    controller: passwordController,
                    title: 'Password',
                    isPassword: true,
                    isHidden: isHidden,
                    callback: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CustomTextButton(
                        textButton: 'Forgot password ?',
                        onPressed: () {
                          widget.callback.call();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (authBloc.state.isLogin) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeApp(),
                  ),
                );
              } else {
                printRed('isLogin sai');
              }
            },
            child: CustomButton(
              textButton: 'Login',
              callback: () {
                if (_formKeyLogin.currentState!.validate()) {
                  authBloc.add(
                    CheckLogin(
                        newUserName: userNameController.text.trim(),
                        newPassword: passwordController.text.trim()),
                  );
                }
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: CustomTextButton(
              textButton: 'Create account',
              sizeText: AppSize.size17,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
