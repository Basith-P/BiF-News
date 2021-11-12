import 'dart:convert';

import 'package:http/http.dart' as http;

import '/models/modal_article.dart';

class News {
  String url =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=48735544ea5b4613b6b134325bffc646";

  Future<Article> getNews() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print(response.body);
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("There was an error calling the API");
    }
  }
}
