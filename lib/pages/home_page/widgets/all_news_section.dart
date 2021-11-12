import 'package:flutter/material.dart';

import '/dummy_data/dummy_data.dart';
import 'news_card.dart';

class AllNewsSection extends StatelessWidget {
  const AllNewsSection({
    Key? key,
    required this.mdQry,
  }) : super(key: key);

  final MediaQueryData mdQry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All stories',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 10),
          FutureBuilder(builder: (context, snapshot) {
            return ListView.builder(
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
              shrinkWrap: true,
            );
          }),
        ],
      ),
    );
  }
}
