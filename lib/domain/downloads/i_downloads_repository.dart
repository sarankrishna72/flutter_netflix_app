import 'package:netflix_app/domain/downloads/model/downloads_model.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IDownloadsRepository {
  Future<Either<MainFailures, List<DownloadsModel>>> getDownloadsImages();
}
