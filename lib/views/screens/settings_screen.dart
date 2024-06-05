import 'package:flutter/material.dart';
import 'package:lesson51/views/screens/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static String routeName = "/setting";

  @override
  Widget build(BuildContext context) {
    // Todo - MEN Map deb yozdim sababi oldingi sahifada Map yuboryapman.
    Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
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

              Navigator.pushReplacementNamed(context, ProfileScreen.routeName,
                  arguments: arguments);
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: Text(arguments['name']),
      ),
    );
  }
}
