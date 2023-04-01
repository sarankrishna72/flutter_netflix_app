import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class WidgetSearch extends StatelessWidget {
  const WidgetSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      backgroundColor: SECONDARY_BACKGROUND_COLOR.withOpacity(0.4),
      borderRadius: BorderRadius.circular(DEFAULT_INPUT_BORDER_RADIUS),
      padding: const EdgeInsets.all(DEFAULT_INPUT_PADDING),
      onChanged: (value) {
        BlocProvider.of<SearchBloc>(context)
            .add(SearchEvent.getSearchList(mediaQuery: value));
      },
      prefixIcon: const Icon(
        CupertinoIcons.search,
        color: DEFAULT_NAVIGATION_UNSELECTED_ICON_COLOR,
      ),
      suffixIcon: const Icon(
        CupertinoIcons.xmark_circle_fill,
        color: DEFAULT_NAVIGATION_UNSELECTED_ICON_COLOR,
      ),
      style: const TextStyle(
        color: DEFAULT_TEXT_COLOR,
      ),
    );
  }
}
