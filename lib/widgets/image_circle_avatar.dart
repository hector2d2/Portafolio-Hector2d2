import 'package:flutter/material.dart';

class ImageCircleAvatar extends StatelessWidget {
  const ImageCircleAvatar({super.key, required this.radius});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      foregroundImage: Image.asset(
        'assets/images/hectorimg.jpg',
      ).image,
    );
  }
}
