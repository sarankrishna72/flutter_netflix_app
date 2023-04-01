import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/presentation/widgets/widget_movie_card.dart';
import 'package:netflix_app/presentation/widgets/widget_title.dart';

import '../../../core/constants.dart';

class WidgetSearchResult extends StatelessWidget {
  const WidgetSearchResult({Key? key, }) : super(key: key);

  final String movieUrl =
      "https://www.themoviedb.org/t/p/w220_and_h330_face/sv1xJUazXeYqALzczSZ3O6nkH75.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WidgetTitle(title: "Movies & Tv"),
        customSizeBox(height: DEFAULT_SPACE),
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: DEFAULT_GRID_ITEMS_COUNT,
          mainAxisSpacing: DEFAULT_GRID_ITEMS_SPACING,
          crossAxisSpacing: DEFAULT_GRID_ITEMS_SPACING,
          childAspectRatio: DEFAULT_GRID_CHILD_ASPECT_RATIO,
          children: List.generate(
            20,
            (index) => WidgetMovieCard(
              imageUrl: movieUrl,
            ),
          ),
        ))
      ],
    );
  }
}
