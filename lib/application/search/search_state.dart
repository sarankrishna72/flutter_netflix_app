part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {List<DownloadsModel>? idleList,
      List<DownloadsModel>? searchList,
      bool? isLoading,
      required Option<Either<MainFailures, List<DownloadsModel>>>
          searchSuccessOrFailureOtion}) = _SearchState;

  factory SearchState.initial() {
    return SearchState(
      isLoading: false,
      searchList: [],
      idleList: [],
      searchSuccessOrFailureOtion: none(),
    );
  }
}
