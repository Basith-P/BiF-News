import 'package:flutter/material.dart';

import '/screens/home_screen.dart';
import '/screens/profile_screen.dart';

const String homePage = 'home';
const String profilePage = 'profile';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case profilePage:
      return MaterialPageRoute(builder: (context) => const ProfilePage());
    default:
      throw ('This route name does not exist');
  }
}
