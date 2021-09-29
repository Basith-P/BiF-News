import 'package:flutter/material.dart';

import '/config/routes.dart' as route;
import '/utils/vars.dart';
import '/widgets/circle_avatar_with_shadow.dart';
import '/dummy_data/dummy_data.dart';
import '/models/model_news.dart';
import '/pages/home_page/widgets/popular_news_section.dart';
import 'widgets/news_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<News> popularNews = dummyNews.toList();

  @override
  Widget build(BuildContext context) {
    final mdQry = MediaQuery.of(context);
    final appBar = AppBar(
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
    );

    return Scaffold(
      appBar: appBar,
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
                  const SizedBox(height: 10),
                  SizedBox(
                    height: mdQry.size.height -
                        appBar.preferredSize.height -
                        mdQry.padding.vertical -
                        308,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return NewsCard(
                          title: dummyNews[index].title,
                          imageUrl: dummyNews[index].image,
                          date: dummyNews[index].date,
                          screenWidth: mdQry.size.width,
                        );
                      },
                      itemCount: dummyNews.length,
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
