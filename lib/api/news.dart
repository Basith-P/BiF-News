import 'dart:convert';

import 'package:http/http.dart' as http;

import 'apikey.dart';
import '/models/modal_article.dart';

class News {
  String url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey";

  Future<List<Article>> getNews() async {
    var response = await http.Client().get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> _json = json.decode(response.body);
      List<dynamic> body = _json['articles'];
      List<Article> articles = [];
      for (var element in body) {
        try {
          articles.add(Article.fromJson(element));
        } catch (_) {}
      }
      return articles;

      // return Article.fromJson(json.decode(response.body));
    } else {
      throw Exception("There was an error calling the API");
    }
  }
}
