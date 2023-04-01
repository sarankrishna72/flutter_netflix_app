import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/presentation/search/widgets/widget_top_search_item_tile.dart';
import 'package:netflix_app/presentation/widgets/widget_loader.dart';
import 'package:netflix_app/presentation/widgets/widget_title.dart';
import '../../../core/constants.dart';

class WidgetSearchIdle extends StatelessWidget {
  const WidgetSearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getTopSearchList());
    });
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WidgetTitle(title: "Top Searches"),
            customSizeBox(height: DEFAULT_SPACE),
            Expanded(
              child: state.isLoading!
                  ? const WidgetLoader()
                  : ListView.separated(
                      itemBuilder: (ctx, index) {
                        return WidgetTopSearchItemTile(
                            item: state.idleList![index]);
                      },
                      separatorBuilder: (ctx, index) {
                        return customSizeBox(height: DEFAULT_SPACE * .25);
                      },
                      itemCount: state.idleList!.length,
                    ),
            )
          ],
        );
      },
    );
  }
}
