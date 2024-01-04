import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.textButton = '',
      this.sizeText = 15,
      required this.onPressed});
  final String textButton;
  final double sizeText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(padding: const EdgeInsets.all(10)),
        onPressed: () {
          onPressed.call();
        },
        child: Text(
          textButton,
          style: TextStyle(fontSize: sizeText, fontWeight: FontWeight.w500),
        ));
  }
}
