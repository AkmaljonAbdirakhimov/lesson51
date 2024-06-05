import 'package:flutter/material.dart';
import 'package:lesson51/views/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final iconButtonKey = GlobalKey();

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            key: iconButtonKey,
            onPressed: () {
              //! Navigator push / pushReplacement
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return SettingsScreen();
                  },
                ),
              );

              Navigator.pushNamed(
                context,
                SettingsScreen.routeName,
                arguments: {"name": "valijon"},
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
