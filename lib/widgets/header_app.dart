import 'package:chat_app/config/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp(
      {super.key,
      this.title = '',
      this.child = const SizedBox(),
      this.colorIcon = Colors.black,
      this.colorTitle = Colors.black,
      required this.callback});
  final String title;
  final Widget child;
  final Color colorIcon;
  final Color colorTitle;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            callback.call();
          },
          child: SvgPicture.asset(
            'assets/svg/left_arrow.svg',
            color: colorIcon,
          ),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: AppSize.size18,
              fontWeight: FontWeight.w700,
              color: colorTitle),
        ),
        child
      ],
    );
  }
}
