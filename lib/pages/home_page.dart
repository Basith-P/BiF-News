import 'package:flutter/material.dart';

import '/config/routes.dart' as route;
import '../utils/vars.dart';
import '/widgets/circle_avatar_with_shadow.dart';
import '/widgets/popular_news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search_rounded),
        elevation: 0,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 10),
                child: Text(
                  'Popular stories',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              PopularNewsCard(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}
