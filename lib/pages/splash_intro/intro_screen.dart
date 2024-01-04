import 'package:chat_app/config/app_color.dart';
import 'package:chat_app/config/app_size.dart';
import 'package:chat_app/pages/auth/auth_sccreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/intro_image.png'),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.size24),
            child: Column(
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  'Learn Code From Your Home',
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: AppSize.size30,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blue_343674),
                ),
                const SizedBox(
                  height: AppSize.size26,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Learning is an essential part of everyone’s life, whether it is for achieving a job or for knowledge’s sake. Online environment is changing constantly and it is a great opportunity for learning.',
                  style: TextStyle(
                      fontSize: AppSize.size15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue_343674.withOpacity(0.8)),
                ),
                const SizedBox(
                  height: AppSize.size23,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: 84,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 5,
                          offset: const Offset(25, 25),
                          color: AppColors.blue_8518FF.withOpacity(0.30),
                        )
                      ]),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue_8518FF),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AuthScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Next',
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.white,
                                fontWeight: FontWeight.w300),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            width: 72,
                            height: 43,
                            decoration: BoxDecoration(
                              color: AppColors.white_F5F5F6,
                              borderRadius: BorderRadius.circular(46),
                            ),
                            child: SvgPicture.asset(
                              'assets/svg/right_vector.svg',
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
