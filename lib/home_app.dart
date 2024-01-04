import 'package:chat_app/widgets/drawer_app.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerApp(),
      ),
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          Divider(
            color: Colors.red,
            thickness: 5,
          )
        ],
      ),
    );
  }
}
