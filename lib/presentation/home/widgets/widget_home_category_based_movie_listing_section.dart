import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/widget_home_movie_listing.dart';

class WidgetHomeCategoryBasedMovieListingSection extends StatelessWidget {
  const WidgetHomeCategoryBasedMovieListingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DEFAULT_SPACE),
      child: Column(children: [
        const WidgetHomeMovieListing(
          title: "Top Picks for Sarath",
        ),
        customSizeBox(height: DEFAULT_SPACE),
        const WidgetHomeMovieListing(
          title: "Trending Now",
        ),
        customSizeBox(height: DEFAULT_SPACE),
        const WidgetHomeMovieListing(
          title: "Young Adult Movies & Shows",
        ),
        customSizeBox(height: DEFAULT_SPACE),
        const WidgetHomeMovieListing(
          title: "Sci-Fi TV",
          cardType: 'numberCard',
        ),
      ]),
    );
  }
}
