import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/downloads/widgets/widget_introducing_section.dart';
import 'package:netflix_app/presentation/downloads/widgets/widget_smart_downloads.dart';
import 'package:netflix_app/presentation/widgets/widget_main_container.dart';
import '../widgets/widget_app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _pageWidgets = [
    const WidgetSmartDownloads(),
    const WidgetIntroducingSection(),
    const _ButtonSection()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(title: 'Downloads'),
      body: WidgetMainContainer(
        child: ListView.separated(
            itemBuilder: (itemCtx, index) {
              return _pageWidgets[index];
            },
            separatorBuilder: (seperatorCtx, index) {
              return customSizeBox(height: DEFAULT_SPACE);
            },
            itemCount: _pageWidgets.length),
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          elevation: 0,
          color: BUTTON_SECONDARY_COLOR,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          height: DEFAULT_BUTTON_HEIGHT,
          minWidth: double.infinity,
          child: const Text(
            "Set Up",
            style: TextStyle(
                color: DEFAULT_TEXT_COLOR,
                fontSize: DEFAULT_TEXT_SIZE * 1.15,
                fontWeight: FontWeight.bold),
          ),
        ),
        customSizeBox(height: DEFAULT_SPACE / 2),
        MaterialButton(
          onPressed: () {},
          elevation: 0,
          color: BUTTON_PRIMARY_COLOR,
          height: DEFAULT_BUTTON_HEIGHT,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            "Find more to Download",
            style: TextStyle(
                color: DEFAULT_TEXT_COLOR,
                fontSize: DEFAULT_TEXT_SIZE * .85,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
