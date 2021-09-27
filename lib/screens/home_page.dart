import 'package:flutter/material.dart';

import '/config/routes.dart' as route;

class HomePage extends StatelessWidget {
  static const routName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, route.profilePage),
          child: const Text('Profile page'),
        ),
      ),
    );
  }
}
