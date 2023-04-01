import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class WidgetHomeBannerPlayButton extends StatelessWidget {
  const WidgetHomeBannerPlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            const Size(90, 50),
          ),
          backgroundColor: MaterialStateProperty.all(
            DEFAULT_BUTTON_BACKGROUND_COLOR,
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
                horizontal: DEFAULT_SPACE - 5, vertical: DEFAULT_SPACE - 10),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                DEFAULT_INPUT_BORDER_RADIUS,
              ),
            ),
          )),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow_rounded,
        color: TERTIARY_TEXT_COLOR,
        size: DEFAULT_ICON_SIZE * 1.25,
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: DEFAULT_SPACE),
        child: Text(
          "Play",
          style: TextStyle(
              color: TERTIARY_TEXT_COLOR,
              fontSize: DEFAULT_TEXT_SIZE * 1.25,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
