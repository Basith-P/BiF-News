import 'package:flutter/material.dart';

import 'package:bif_news_app/pages/home_page/widgets/popular_news_card.dart';
import 'package:bif_news_app/models/modal_article.dart';
import 'package:bif_news_app/api/news.dart' as news;

class PopularNewsSection extends StatefulWidget {
  const PopularNewsSection({
    Key? key,
  }) : super(key: key);

  @override
  State<PopularNewsSection> createState() => _PopularNewsSectionState();
}

class _PopularNewsSectionState extends State<PopularNewsSection> {
  late Future<List<Article>> _popularNews;

  @override
  void initState() {
    super.initState();
    _popularNews = news.News().getNews();
  }

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
          child: FutureBuilder<List<Article>>(
            future: _popularNews,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    var data = snapshot.data![index];
                    return PopularNewsCard(
                      title: data.title,
                      image: data.image,
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ],
    );
  }
}
