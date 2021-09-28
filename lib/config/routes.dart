import 'package:flutter/material.dart';

import '/pages/home_page.dart';
import '../pages/profile_page.dart';

const String homePage = 'home';
const String profilePage = 'profile';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case profilePage:
      return MaterialPageRoute(builder: (context) => const ProfilePage());
    default:
      throw ('This route name does not exists');
  }
}
