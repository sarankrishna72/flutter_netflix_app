import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isShowLogo;
  final PreferredSizeWidget? bottomWidget;
  final double appBarHeight;
  final dynamic backgroundColor;
  const WidgetAppBar({
    this.title = '',
    this.isShowLogo = false,
    this.bottomWidget,
    this.appBarHeight = 58,
    this.backgroundColor = Colors.transparent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: DEFAULT_HEADER_LABEL_SIZE,
          fontWeight: FontWeight.w900,
        ),
      ),
      automaticallyImplyLeading: false,
      titleSpacing: DEFAULT_SPACE,
      leadingWidth: 60,
      // toolbarHeight: 60,
      elevation: 0,
      leading: isShowLogo
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset(
                "assets/images/netflix_logo.png",
                height: 30,
              ),
            )
          : null,
      bottom: (bottomWidget != null) ? bottomWidget : null,
      actions: [
        Row(
          children: [
            const Icon(
              Icons.cast,
              color: DEFAULT_ICON_COLOR,
              size: 25,
            ),
            customSizeBox(width: DEFAULT_FONT_SPACE),
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                "assets/images/avatar.png",
                height: 30,
              ),
            ),
            customSizeBox(width: DEFAULT_SPACE),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
