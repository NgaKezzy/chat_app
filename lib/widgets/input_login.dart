import 'package:chat_app/config/app_color.dart';
import 'package:chat_app/config/app_size.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputLogin extends StatefulWidget {
  InputLogin(
      {super.key,
      this.controller,
      this.title = '',
      this.isPassword = false,
      this.isHidden = false,
      this.callback,
      this.inputType = TextInputType.text});
  final TextEditingController? controller;
  final String title;
  late bool isPassword;
  late bool isHidden;
  final VoidCallback? callback;
  final TextInputType inputType;

  @override
  State<InputLogin> createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
              color: AppColors.grey_868686,
              fontSize: AppSize.size15,
              fontWeight: FontWeight.w500),
        ),
        TextFormField(
          keyboardType: widget.inputType,
          validator: _checkValidatorPassword,
          controller: widget.controller,
          obscureText: widget.isHidden,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? GestureDetector(
                      onTap: () {
                        widget.callback?.call();
                      },
                      child: Text(
                        widget.isHidden ? 'Show' : 'Hidden',
                        style: const TextStyle(
                            color: AppColors.blue_8518FF,
                            fontSize: AppSize.size15,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  : const SizedBox()),
        ),
      ],
    );
  }
}

String? _checkValidatorPassword(String? value) {
  if (value == null || value.isEmpty || value.length < 3) {
    return 'Vui lòng nhập nội dung !';
  }
  return null;
}
