part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getSearchList({required String mediaQuery}) =
      _GetSearchList;
  const factory SearchEvent.getTopSearchList() = _GetTopSearchList;
}
