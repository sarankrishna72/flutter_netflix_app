import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repository.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/model/downloads_model.dart';
import 'package:netflix_app/infrastructure/core/api_endpoints.dart';
import 'package:netflix_app/infrastructure/core/dio/app_dio.dart';

@LazySingleton(as: IDownloadsRepository)
class DownloadsRepository implements IDownloadsRepository {
  final Dio _dio = AppDio().instance;

  @override
  Future<Either<MainFailures, List<DownloadsModel>>>
      getDownloadsImages() async {
    try {
      final response = await _dio.get(ApiEndpoints.downloadsURI);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList = (response.data['results'] as List).map(
          (e) {
            return DownloadsModel.fromJson(e);
          },
        ).toList();
        return Right(downloadList);
      }
      return const Left(MainFailures.serverFailure());
    } catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
