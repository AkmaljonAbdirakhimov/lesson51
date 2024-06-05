import 'package:flutter/material.dart';
import 'package:lesson51/views/screens/home_screen.dart';
import 'package:lesson51/views/screens/profile_screen.dart';
import 'package:lesson51/views/screens/settings_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    HomeScreen.routeName: (ctx) => HomeScreen(),
    SettingsScreen.routeName: (ctx) {
      return const SettingsScreen();
    },
    ProfileScreen.routeName: (ctx) {
      return const ProfileScreen();
    }
  };

}

class RouteNames {
  static String settingsRoute = '/settings';
}