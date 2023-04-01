import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/model/downloads_model.dart';

abstract class ISearchRepository {
  Future<Either<MainFailures, List<DownloadsModel>>> getSearchList(
      {required String movieQuery});
  // Future<Either<MainFailures, List<DownloadsModel>>> getTopSearchList();
}
