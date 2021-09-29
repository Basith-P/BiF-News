enum Popularity {
  popular,
  unpopular,
}

class News {
  final String title;
  final String image;
  final String date;
  String? desc = 'Not available';
  Popularity? popularity = Popularity.unpopular;

  News({
    required this.title,
    required this.image,
    required this.date,
    this.desc,
    this.popularity,
  });
}
