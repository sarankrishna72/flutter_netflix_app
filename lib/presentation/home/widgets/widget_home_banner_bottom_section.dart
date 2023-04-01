import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/widget_home_banner_play_button.dart';
import 'package:netflix_app/presentation/widgets/widget_icon_button.dart';
import 'package:netflix_app/presentation/widgets/widget_movie_category_text.dart';

class WidgetHomeBannerBottomSection extends StatelessWidget {
  const WidgetHomeBannerBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: BLACK_WITH_OPACITY_7,
        padding: const EdgeInsets.all(DEFAULT_SPACE - 10),
        child: Column(
          children: [
            const WidgetMovieCategoryText(),
            customSizeBox(height: DEFAULT_SPACE - 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                WidgetIconButton(
                  title: "My List",
                  icon: Icons.add,
                ),
                WidgetHomeBannerPlayButton(),
                WidgetIconButton(
                  title: "Info",
                  icon: Icons.info,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  WidgetHomeBannerIconButton({required String title, required IconData icon}) {}
}
