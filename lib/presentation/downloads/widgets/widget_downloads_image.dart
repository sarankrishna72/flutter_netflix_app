import 'dart:math';
import 'package:flutter/material.dart';

class WidgetDownloadsImage extends StatelessWidget {
  const WidgetDownloadsImage({
    super.key,
    required this.size,
    required this.image,
    required this.angle,
    required this.margin,
    required this.radius,
  });

  final Size size;
  final String image;
  final dynamic angle;
  final EdgeInsets margin;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.network(
            image,
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
