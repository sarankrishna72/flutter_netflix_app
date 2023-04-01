import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

import 'widget_new_and_hot_list_item.dart';

class WidgetCommingSoon extends StatelessWidget {
  const WidgetCommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return const WidgetNewAndHotListItem(
          cardType: NewAndHotCardTypes.comingSoon,
        );
      },
      separatorBuilder: (ctx, index) {
        return customSizeBox(height: DEFAULT_SPACE / 2);
      },
      itemCount: 10,
    );
  }
}
