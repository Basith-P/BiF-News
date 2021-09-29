import 'package:flutter/material.dart';

import '/config/routes.dart' as route;
import '/utils/vars.dart';
import '/widgets/circle_avatar_with_shadow.dart';
import '/dummy_data/dummy_data.dart';
import '/models/model_news.dart';
import '/pages/home_page/widgets/popular_news_section.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<News> popularNews = dummyNews.toList();

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: const [
            PopularNewsSection(),
          ],
        ),
      ),
    );
  }
}
