part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState(
      {required bool isLoading,
      List<DownloadsModel>? downloadsList,
      required Option<Either<MainFailures, List<DownloadsModel>>>
          downloadsSuccessOrFailureOtion}) = _DownloadsState;

  factory DownloadsState.initial() {
    return DownloadsState(
      isLoading: false,
      downloadsList: [],
      downloadsSuccessOrFailureOtion: none(),
    );
  }
}
