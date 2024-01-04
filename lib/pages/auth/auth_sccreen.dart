import 'package:chat_app/config/app_color.dart';
import 'package:chat_app/config/app_size.dart';
import 'package:chat_app/config/print_color.dart';
import 'package:chat_app/pages/auth/forgot_password_component.dart';
import 'package:chat_app/pages/auth/login_component.dart';
import 'package:chat_app/pages/auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: must_be_immutable
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isForgotPassword = false;
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              isLogin
                  ? Container(
                      height: height * 0.3 - 32,
                      padding:
                          const EdgeInsets.only(top: 20, right: 64, left: 64),
                      child: Stack(children: [
                        const Image(
                          image: AssetImage('assets/images/ellipse.png'),
                        ),
                        Positioned(
                            top: 40,
                            right: 0,
                            child: SvgPicture.asset(
                              'assets/svg/logo_learn_code.svg',
                              width: 150,
                              height: 50,
                            ))
                      ]),
                    )
                  : Container(
                      height: height * 0.18 - 32,
                      padding:
                          const EdgeInsets.only(top: 20, right: 64, left: 64),
                      child: SvgPicture.asset(
                        'assets/svg/logo_learn_code.svg',
                        width: 150,
                        height: 50,
                      ),
                    ),
              Container(
                alignment: Alignment.bottomCenter,
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                  color: AppColors.blue_8518FF,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.08,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isLogin = !isLogin;
                                isForgotPassword = false;
                              });
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: isLogin
                                      ? AppColors.white
                                      : AppColors.white.withOpacity(0.25),
                                  fontSize: AppSize.size18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isLogin = !isLogin;
                              });
                            },
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  color: isLogin
                                      ? AppColors.white.withOpacity(0.25)
                                      : AppColors.white,
                                  fontSize: AppSize.size18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: isLogin ? height * 0.57 : height * 0.74,
                        width: width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35)),
                          color: AppColors.white,
                        ),
                        child: isLogin
                            ? isForgotPassword
                                ? const ForgotPasswordComponent()
                                : LoginComponent(
                                    callback: () {
                                      setState(() {
                                        isForgotPassword = !isForgotPassword;
                                        printRed(isForgotPassword.toString());
                                      });
                                    },
                                  )
                            : const SignUp()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
