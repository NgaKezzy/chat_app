import 'package:chat_app/bloc/auth_bloc.dart';
import 'package:chat_app/bloc/auth_event.dart';
import 'package:chat_app/bloc/auth_state.dart';
import 'package:chat_app/config/app_color.dart';
import 'package:chat_app/config/app_size.dart';
import 'package:chat_app/home_app.dart';
import 'package:chat_app/models/item_drawer.dart';
import 'package:chat_app/pages/splash_intro/splash_logo.dart';
import 'package:chat_app/pages/video_screen.dart';
import 'package:chat_app/widgets/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class DrawerApp extends StatelessWidget {
  DrawerApp({super.key});
  List<ItemDrawer> itemsDrawer = [
    ItemDrawer(title: 'Home', icon: Icons.home),
    ItemDrawer(title: 'Videos', icon: Icons.slideshow),
    ItemDrawer(title: 'Projects', icon: Icons.bookmark),
    ItemDrawer(title: 'Settings', icon: Icons.settings),
    ItemDrawer(title: 'Logout', icon: Icons.logout)
  ];

  List<Widget> screens = [
    const HomeApp(),
    const VideoScreen(),
    const VideoScreen(),
    const VideoScreen(),
    const SplashScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = context.read<AuthBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  const ProfileItem(),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${state.user?.firstName} ${state.user?.lastName} ',
                        style: const TextStyle(
                            color: AppColors.black,
                            fontSize: AppSize.size18,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        'STUDENT',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: AppSize.size10,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Expanded(
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (index == itemsDrawer.length - 1) {
                              authBloc.add(LogOut());
                            }
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => screens[index]),
                                (route) => false);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Icon(itemsDrawer[index].icon,
                                    color: AppColors.black),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  itemsDrawer[index].title,
                                  style: const TextStyle(
                                      color: AppColors.black,
                                      fontSize: AppSize.size18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                      itemCount: itemsDrawer.length))
            ],
          );
        },
      ),
    );
  }
}
