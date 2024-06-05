import 'package:flutter/material.dart';
import 'package:lesson51/views/screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {
              //! Navigator push / pushReplacement
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (ctx) {
              //       return const SettingsScreen();
              //     },
              //   ),
              // );

              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
