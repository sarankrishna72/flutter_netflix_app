import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/widget_icon_button.dart';

class WidgetEveryOnesWatchingListActionSection extends StatelessWidget {
  const WidgetEveryOnesWatchingListActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        WidgetIconButton(
          icon: Icons.share_sharp,
          minmumSize: Size(50, 50),
          textPadding: EdgeInsets.symmetric(
            horizontal: DEFAULT_SPACE / 2,
          ),
        ),
        WidgetIconButton(
          icon: Icons.add,
          minmumSize: Size(50, 50),
          textPadding: EdgeInsets.symmetric(
            horizontal: DEFAULT_SPACE / 2,
          ),
        ),
        WidgetIconButton(
          icon: Icons.play_arrow,
          minmumSize: Size(50, 50),
          textPadding: EdgeInsets.symmetric(
            horizontal: DEFAULT_SPACE / 2,
          ),
        ),
      ],
    );
  }
}
