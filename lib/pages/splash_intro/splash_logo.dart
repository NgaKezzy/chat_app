import 'dart:async';

import 'package:chat_app/pages/splash_intro/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void nextIntroScreen() {
    Timer(const Duration(seconds: 2), () {
      print('nhay vao');
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const IntroScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    nextIntroScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 223,
          height: 224,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(18),
          ),
          child: SvgPicture.asset('assets/svg/logo.svg'),
        ),
      ),
    );
  }
}
