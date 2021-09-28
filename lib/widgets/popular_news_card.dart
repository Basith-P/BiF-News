import 'package:flutter/material.dart';

class PopularNewsCard extends StatelessWidget {
  const PopularNewsCard({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
                'https://ichef.bbci.co.uk/news/640/cpsprodpb/14A35/production/_115033548_gettyimages-1226314512.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'COVID-19 caused biggest dip in life expectancy since WWII: Study',
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            ],
          ),
        ));
  }
}
