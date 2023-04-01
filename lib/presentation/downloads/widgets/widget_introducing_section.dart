import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/downloads/widgets/widget_download_avatar_section.dart';

class WidgetIntroducingSection extends StatelessWidget {
  const WidgetIntroducingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: DEFAULT_SPACE / 2),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Introducing Downloads for You",
              style: TextStyle(
                fontSize: DEFAULT_TEXT_SIZE * 1.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          customSizeBox(height: DEFAULT_SPACE / 2),
          const Text(
            "We will download a personalised selection of\n movies and shows for you, so there's \n always something to watch on your\n device.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: SECONDARY_TEXT_COLOR,
              fontSize: DEFAULT_TEXT_SIZE,
              fontWeight: FontWeight.w500,
            ),
          ),
          customSizeBox(height: DEFAULT_SPACE / 2),
          const WidgetDownloadAvatarSection(),
        ],
      ),
    );
  }
}
