import 'package:chat_app/config/app_size.dart';
import 'package:flutter/material.dart';

class InfoUserMessage extends StatelessWidget {
  const InfoUserMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              image: const DecorationImage(
                  image: AssetImage('assets/images/avatar.jpg'),
                  fit: BoxFit.cover)),
        ),
        const Text(
          'Khánh Huyền',
          style:
              TextStyle(fontSize: AppSize.size28, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
