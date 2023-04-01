import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class WidgetTitle extends StatelessWidget {
  final String title;
  const WidgetTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: DEFAULT_TEXT_COLOR,
        fontSize: DEFAULT_TEXT_SIZE * 1.4,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
