import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/widget_icon_button.dart';

class WidgetComingSoonListActionSection extends StatelessWidget {
  const WidgetComingSoonListActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        WidgetIconButton(
          icon: Icons.notifications_none,
          title: "Reminds Me",
          minmumSize: Size(50, 50),
          textPadding: EdgeInsets.symmetric(
            horizontal: DEFAULT_SPACE / 2,
          ),
        ),
        WidgetIconButton(
          icon: Icons.info,
          title: "Info",
          minmumSize: Size(50, 50),
          textPadding: EdgeInsets.symmetric(
            horizontal: DEFAULT_SPACE / 2,
          ),
        ),
      ],
    );
  }
}
