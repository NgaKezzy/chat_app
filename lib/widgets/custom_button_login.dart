import 'package:chat_app/config/app_color.dart';
import 'package:chat_app/config/app_size.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.textButton = '',
      required this.callback,
      this.height = 70,
      this.width = 300});

  final String textButton;
  final VoidCallback callback;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback.call();
      },
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.blue_8518FF,
        ),
        child: Text(
          textButton,
          style:
              const TextStyle(fontSize: AppSize.size20, color: AppColors.white),
        ),
      ),
    );
  }
}
