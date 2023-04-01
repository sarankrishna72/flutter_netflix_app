import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_coming_soon_movie_list_action_section.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_every_ones_watching_list_actions_section.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_new_and_hot_list_item.dart';

class WidgetComingSoonMovieCardTitleSection extends StatelessWidget {
  final Enum cardType;
  const WidgetComingSoonMovieCardTitleSection(
      {Key? key, this.cardType = NewAndHotCardTypes.comingSoon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Text(
            "Walter Veerayyaa",
            style: TextStyle(
              fontSize: DEFAULT_TEXT_SIZE * 1.2,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              letterSpacing: 0,
            ),
          ),
        ),
        // type == 'co'
        cardType == NewAndHotCardTypes.comingSoon
            ? WidgetComingSoonListActionSection()
            : WidgetEveryOnesWatchingListActionSection()
      ],
    );
  }
}
