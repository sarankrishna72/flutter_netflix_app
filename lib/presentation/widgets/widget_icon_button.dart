import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class WidgetIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Size? minmumSize;
  final EdgeInsets? textPadding;
  const WidgetIconButton({
    super.key,
    this.title = '',
    required this.icon,
    this.minmumSize,
    this.textPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        alignment: Alignment.center,
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        minimumSize: MaterialStateProperty.all(
          minmumSize != null ? minmumSize : const Size(70, 50),
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: DEFAULT_ICON_COLOR,
            size: DEFAULT_ICON_SIZE + 4,
          ),
          title.isNotEmpty
              ? Padding(
                  padding: textPadding ??
                      const EdgeInsets.symmetric(horizontal: DEFAULT_SPACE),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: DEFAULT_TEXT_COLOR,
                      fontSize: DEFAULT_TEXT_SIZE - 4,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
