import 'package:flutter/material.dart';

class CircleAvatarWithShadow extends StatelessWidget {
  final ImageProvider image;
  final double radius;

  const CircleAvatarWithShadow({Key? key, required this.image, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
          ),
        ],
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: image,
      ),
    );
  }
}
