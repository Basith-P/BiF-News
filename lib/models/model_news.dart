import 'package:flutter/material.dart';

enum Popularity {
  popular,
  unpopular,
}

class News {
  final String title;
  final ImageProvider image;
  final String desc;
  final String date;
  Popularity? popularity = Popularity.unpopular;

  News({
    required this.title,
    required this.image,
    required this.desc,
    required this.date,
    this.popularity,
  });
}
