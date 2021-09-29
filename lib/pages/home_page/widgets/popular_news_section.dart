import 'package:bif_news_app/models/model_news.dart';
import 'package:flutter/material.dart';

import '/dummy_data/dummy_data.dart';
import 'popular_news_card.dart';

class PopularNewsSection extends StatelessWidget {
  PopularNewsSection({
    Key? key,
  }) : super(key: key);

  final _popularNews =
      dummyNews.where((element) => element.popularity == Popularity.popular).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 10, right: 5, bottom: 10),
          child: Text(
            'Popular',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PopularNewsCard(
                title: _popularNews[index].title,
                image: _popularNews[index].image,
              );
            },
            itemCount: _popularNews.length,
          ),
        ),
      ],
    );
  }
}
