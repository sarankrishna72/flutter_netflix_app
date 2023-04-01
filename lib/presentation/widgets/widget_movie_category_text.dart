import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class WidgetMovieCategoryText extends StatelessWidget {
  const WidgetMovieCategoryText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Crime . Dark Comedy . Thriller",
      style:
          TextStyle(color: DEFAULT_TEXT_COLOR, fontSize: DEFAULT_TEXT_SIZE - 3),
    );
  }
}
