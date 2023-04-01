import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/widget_new_and_hot_list_item.dart';

class WidgetEveryOnesWatching extends StatelessWidget {
  const WidgetEveryOnesWatching({Key? key, c}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return const WidgetNewAndHotListItem(
          cardType: NewAndHotCardTypes.everyOnesWatching,
        );
      },
      separatorBuilder: (ctx, index) {
        return customSizeBox(height: DEFAULT_SPACE / 2);
      },
      itemCount: 10,
    );
  }
}
