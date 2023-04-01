import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/widget_movie_category_text.dart';

class WidgetComingSoonDetailsSection extends StatelessWidget {
  const WidgetComingSoonDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "New Episode coming on 10 March",
          style: TextStyle(
            fontSize: DEFAULT_TEXT_SIZE * 1.1,
            color: DEFAULT_TEXT_COLOR,
          ),
        ),
        customSizeBox(height: DEFAULT_SPACE / 3),
        const Text(
          "A U.N. employee races against time and fate as he travels the world trying to stop the spread of a deadly zombie pandemic.",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: DEFAULT_TEXT_SIZE - 1,
            color: SECONDARY_TEXT_COLOR,
          ),
        ),
        customSizeBox(height: DEFAULT_SPACE / 3),
        const WidgetMovieCategoryText()
      ],
    );
  }
}
