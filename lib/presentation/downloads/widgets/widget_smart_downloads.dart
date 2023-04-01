import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class WidgetSmartDownloads extends StatelessWidget {
  const WidgetSmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.settings,
          color: DEFAULT_ICON_COLOR,
          size: DEFAULT_ICON_SIZE,
        ),
        customSizeBox(width: DEFAULT_FONT_SPACE),
        const Text(
          "Smart Downloads",
          style: TextStyle(fontSize: DEFAULT_TEXT_SIZE),
        ),
      ],
    );
  }
}
