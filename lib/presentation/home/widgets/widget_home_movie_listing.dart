import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/widget_top_movie_number_card.dart';
import 'package:netflix_app/presentation/widgets/widget_title.dart';

import '../../widgets/widget_movie_card.dart';

class WidgetHomeMovieListing extends StatelessWidget {
  final String title;
  final List? data;
  final String cardType;
  const WidgetHomeMovieListing(
      {super.key, required this.title, this.data, this.cardType = 'card'});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetTitle(title: title),
        customSizeBox(height: 5),
        LimitedBox(
          maxHeight: 165,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              if (cardType == 'card') {
                return const WidgetMovieCard(imageUrl: TESTING_IMAGE_URL);
              } else if (cardType == 'numberCard') {
                return WidgetTopMovieNumberCard(
                  imageUrl: TESTING_IMAGE_URL,
                  cardNumber: index + 1,
                );
              }
              //
            },
            separatorBuilder: (ctx, index) {
              return customSizeBox(width: DEFAULT_SPACE * 0.5);
            },
            itemCount: 5,
          ),
        )
      ],
    );
  }
}
