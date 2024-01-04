import 'package:chat_app/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderMessage extends StatelessWidget {
  const HeaderMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();

                  Navigator.pop(context);
                },
                child: SvgPicture.asset('assets/svg/left_arrow.svg')),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/avatar.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Khánh Huyền',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.phone,
              color: AppColors.blue_8518FF,
            )
          ],
        ),
      ),
    );
  }
}
