import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/model/downloads_model.dart';
import 'package:netflix_app/domain/search/i_search_repository.dart';
import 'package:netflix_app/infrastructure/downloads/downloads_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository _iSearchRepository;
  final DownloadsRepository _downloadsRepository;

  SearchBloc(this._iSearchRepository, this._downloadsRepository)
      : super(SearchState.initial()) {
    on<_GetSearchList>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          idleList: [],
          searchList: [],
          searchSuccessOrFailureOtion: none(),
        ),
      );

      final Either<MainFailures, List<DownloadsModel>> searchOpt =
          await _iSearchRepository.getSearchList(movieQuery: event.mediaQuery);
      emit(searchOpt.fold((MainFailures failure) {
        return state.copyWith(
          isLoading: false,
          idleList: [],
          searchList: [],
          searchSuccessOrFailureOtion: Some(
            Left(failure),
          ),
        );
      }, (success) {
        return state.copyWith(
          isLoading: false,
          idleList: success,
          searchList: success,
          searchSuccessOrFailureOtion: Some(Right(success)),
        );
      }));
      log('Search Result -> $searchOpt');
    });

    on<_GetTopSearchList>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          idleList: [],
          searchList: [],
          searchSuccessOrFailureOtion: none(),
        ),
      );
      final Either<MainFailures, List<DownloadsModel>> searchOpt =
          await _downloadsRepository.getDownloadsImages();
      emit(searchOpt.fold((MainFailures failure) {
        return state.copyWith(
          isLoading: false,
          idleList: [],
          searchList: [],
          searchSuccessOrFailureOtion: Some(
            Left(failure),
          ),
        );
      }, (List<DownloadsModel> success) {
        return state.copyWith(
          isLoading: false,
          idleList: success,
          searchList: [],
          searchSuccessOrFailureOtion: Some(Right(success)),
        );
      }));
    });
  }
}
