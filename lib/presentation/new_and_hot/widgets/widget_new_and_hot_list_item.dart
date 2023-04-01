import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_coming_soon_detail_section.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_coming_soon_movie_card_title_section.dart';

enum NewAndHotCardTypes { comingSoon, everyOnesWatching }

class WidgetNewAndHotListItem extends StatelessWidget {
  final Enum cardType;
  const WidgetNewAndHotListItem(
      {super.key, this.cardType = NewAndHotCardTypes.comingSoon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: DEFAULT_SPACE / 2),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (cardType == NewAndHotCardTypes.comingSoon)
                  ? Wrap(
                      children: [
                        const WidgetComingSoonDateSection(),
                        customSizeBox(width: DEFAULT_SPACE / 3),
                      ],
                    )
                  : const SizedBox(),
              Expanded(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(DEFAULT_BORDER_RADIUS),
                          child: Image.network(NEW_AND_HOT_PAGE_URL),
                        ),
                        Positioned(
                          right: DEFAULT_SPACE / 2,
                          bottom: DEFAULT_SPACE / 2,
                          child: Container(
                            height: DEFAULT_BORDER_RADIUS * 2,
                            width: DEFAULT_BORDER_RADIUS * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: BACKGROUND_COLOR.withOpacity(0.6),
                            ),
                            child: const Icon(
                              Icons.volume_off,
                              color: DEFAULT_ICON_COLOR,
                            ),
                          ),
                        )
                      ],
                    ),
                    customSizeBox(height: DEFAULT_SPACE * .4),
                    WidgetComingSoonMovieCardTitleSection(cardType: cardType),
                    customSizeBox(height: DEFAULT_SPACE / 2),
                    const WidgetComingSoonDetailsSection()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class WidgetComingSoonDateSection extends StatelessWidget {
  const WidgetComingSoonDateSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          "FEB",
          style: TextStyle(
            color: SECONDARY_TEXT_COLOR,
            fontSize: DEFAULT_TEXT_SIZE * .9,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "11",
          style: TextStyle(
            color: DEFAULT_TEXT_COLOR,
            fontSize: DEFAULT_TEXT_SIZE * 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
