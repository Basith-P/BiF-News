import 'package:flutter/material.dart';

import '/dummy_data/dummy_data.dart';
import '/widgets/popular_news_card.dart';

class PopularNewsSection extends StatelessWidget {
  const PopularNewsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 10, right: 5, bottom: 10),
          child: Text(
            'Popular stories',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            padding: const EdgeInsets.all(20).copyWith(top: 0),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PopularNewsCard(
                title: dummyNews[index].title,
                image: dummyNews[index].image,
              );
            },
            itemCount: dummyNews.length,
          ),
        ),
      ],
    );
  }
}
