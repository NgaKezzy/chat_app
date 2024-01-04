import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage('assets/images/avatar.jpg'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
