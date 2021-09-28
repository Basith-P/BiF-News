import 'package:flutter/material.dart';

import '/config/routes.dart' as route;
import '../utils/vars.dart';
import '/widgets/circle_avatar_with_shadow.dart';

class HomePage extends StatelessWidget {
  static const routName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search_rounded),
        title: Text(
          'THE BiF NEWS',
          style: appBarTextStyle,
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, route.profilePage),
            child: const Hero(
              tag: 'profilePic',
              child: CircleAvatarWithShadow(
                image: AssetImage('assets/images/1.png'),
                radius: 15,
              ),
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.white,
                  ),
                  const Text('The most popular news today')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
