import 'package:bif_news_app/models/modal_article.dart';
import 'package:flutter/material.dart';

import 'news_card.dart';
import '/api/news.dart';

class AllNewsSection extends StatefulWidget {
  const AllNewsSection({
    Key? key,
    required this.mdQry,
  }) : super(key: key);

  final MediaQueryData mdQry;

  @override
  State<AllNewsSection> createState() => _AllNewsSectionState();
}

class _AllNewsSectionState extends State<AllNewsSection> {
  late Future<List<Article>> _article;

  @override
  void initState() {
    _article = News().getNews();
    super.initState();
  }

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
          FutureBuilder<List<Article>>(
            future: _article,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: snapshot.data!.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var data = snapshot.data![index]!;
                    return NewsCard(
                      title: data.title,
                      screenWidth: widget.mdQry.size.width,
                      description: data.description,
                      url: data.url,
                      urlToImage: data.urlToImage,
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
        ],
      ),
    );
  }
}
