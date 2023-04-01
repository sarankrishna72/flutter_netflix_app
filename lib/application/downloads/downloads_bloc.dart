import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repository.dart';
import 'package:netflix_app/domain/downloads/model/downloads_model.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepository _iDownloadsRepository;
  DownloadsBloc(this._iDownloadsRepository) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsList: [],
          downloadsSuccessOrFailureOtion: none(),
        ),
      );

      final Either<MainFailures, List<DownloadsModel>> downloadsOpt =
          await _iDownloadsRepository.getDownloadsImages();
      emit(
        downloadsOpt.fold(
            (MainFailures failure) => state.copyWith(
                  isLoading: false,
                  downloadsList: [],
                  downloadsSuccessOrFailureOtion: Some(
                    Left(failure),
                  ),
                ),
            (List<DownloadsModel> success) => state.copyWith(
                  isLoading: false,
                  downloadsList: success,
                  downloadsSuccessOrFailureOtion: Some(
                    Right(success),
                  ),
                )),
      );
    });
  }
}
