import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/widget_movie_card.dart';

class WidgetTopMovieNumberCard extends StatelessWidget {
  final String imageUrl;
  final int cardNumber;
  const WidgetTopMovieNumberCard(
      {super.key, required this.imageUrl, required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            customSizeBox(width: 30, height: 150),
            WidgetMovieCard(imageUrl: imageUrl),
          ],
        ),
        Positioned(
          left: -5,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 6.0,
            strokeColor: SECONDARY_TEXT_COLOR,
            child: Text(
              '$cardNumber',
              style: const TextStyle(
                decoration: TextDecoration.none,
                color: TERTIARY_TEXT_COLOR,
                decorationColor: TERTIARY_TEXT_COLOR,
                fontWeight: FontWeight.bold,
                fontSize: 120,
              ),
            ),
          ),
        )
      ],
    );
  }
}
