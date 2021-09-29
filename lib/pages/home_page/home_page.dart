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
          children: [
            const PopularNewsSection(),
            Padding(
              padding: const EdgeInsets.all(20).copyWith(bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All stories',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    // width: 130,
                    height: 100,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 130,
                            child: Image(
                              image: AssetImage('assets/images/1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title goes here',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                Text(
                                  '21-06-21',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
