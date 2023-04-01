import 'package:flutter/material.dart';

import '../../core/constants.dart';

class WidgetMovieCard extends StatelessWidget {
  final String imageUrl;

  const WidgetMovieCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(DEFAULT_INPUT_BORDER_RADIUS),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
