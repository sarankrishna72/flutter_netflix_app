import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_comming_soon.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_everyones_watching.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_new_and_hot_list_item.dart';
import 'package:netflix_app/presentation/widgets/widget_app_bar.dart';
import 'package:netflix_app/presentation/widgets/widget_main_container.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: WidgetAppBar(
          title: "New & Hot",
          appBarHeight: 105,
          bottomWidget: TabBar(
            isScrollable: true,
            labelColor: TERTIARY_TEXT_COLOR,
            labelStyle: const TextStyle(
              fontSize: DEFAULT_TEXT_SIZE,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelColor: SECONDARY_TEXT_COLOR,
            padding: const EdgeInsets.symmetric(horizontal: DEFAULT_SPACE),
            indicator: BoxDecoration(
              color: DEFAULT_BUTTON_BACKGROUND_COLOR,
              borderRadius: BorderRadius.circular(DEFAULT_SPACE * 2),
            ),
            tabs: const [
              Tab(
                text: "🍿 Comming Soon",
              ),
              Tab(
                text: "👀 Everyone's Watching",
              ),
            ],
          ),
        ),
        body: const WidgetMainContainer(
          child: TabBarView(
              children: [WidgetCommingSoon(), WidgetEveryOnesWatching()]),
        ),
      ),
    );
  }
}
