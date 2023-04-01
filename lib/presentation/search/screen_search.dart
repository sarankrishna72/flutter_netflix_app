import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/widget_search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/widget_search_result.dart';
import 'package:netflix_app/presentation/search/widgets/widget_serach.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(DEFAULT_SPACE),
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WidgetSearch(),
                  customSizeBox(height: DEFAULT_SPACE),
                  state.searchList!.isNotEmpty
                      ? const Expanded(child: WidgetSearchResult())
                      : const Expanded(child: WidgetSearchIdle())
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
