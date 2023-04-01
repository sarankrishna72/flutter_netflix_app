import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/infrastructure/downloads/downloads_repository.dart';
import 'package:netflix_app/infrastructure/search/search_repository.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  getIt.registerLazySingleton(() => DownloadsRepository());
  getIt.registerLazySingleton(() => SearchRepository());
  getIt.registerFactory(() => DownloadsBloc(getIt<DownloadsRepository>()));
  getIt.registerFactory(() =>
      SearchBloc(getIt<SearchRepository>(), getIt<DownloadsRepository>()));
}
