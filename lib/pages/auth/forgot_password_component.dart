import 'package:chat_app/config/app_size.dart';
import 'package:chat_app/widgets/custom_button_login.dart';
import 'package:chat_app/widgets/input_otp.dart';
import 'package:flutter/material.dart';
class ForgotPasswordComponent extends StatefulWidget {
  const ForgotPasswordComponent({super.key});

  @override
  State<ForgotPasswordComponent> createState() =>
      _ForgotPasswordComponentState();
}

class _ForgotPasswordComponentState extends State<ForgotPasswordComponent> {
  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  final TextEditingController _controller3 = TextEditingController();

  final TextEditingController _controller4 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const Text(
                'Verification Code',
                style: TextStyle(
                    fontSize: AppSize.size20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: AppSize.size12,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Enter the 4 digits code that you received on your e-mail.',
                  style: TextStyle(
                      fontSize: AppSize.size13, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputOtp(
                    textEditingController: _controller1,
                  ),
                  InputOtp(
                    textEditingController: _controller2,
                  ),
                  InputOtp(
                    textEditingController: _controller3,
                  ),
                  InputOtp(
                    textEditingController: _controller4,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          textButton: 'Login',
          callback: () {
            FocusScope.of(context).unfocus();
          },
        )
      ],
    );
  }
}
