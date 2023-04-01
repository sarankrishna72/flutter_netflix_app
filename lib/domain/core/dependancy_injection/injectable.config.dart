// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_app/application/downloads/downloads_bloc.dart' as _i8;
import 'package:netflix_app/application/search/search_bloc.dart' as _i7;
import 'package:netflix_app/domain/downloads/i_downloads_repository.dart'
    as _i3;
import 'package:netflix_app/domain/search/i_search_repository.dart' as _i5;
import 'package:netflix_app/infrastructure/downloads/downloads_repository.dart'
    as _i4;
import 'package:netflix_app/infrastructure/search/search_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadsRepository>(() => _i4.DownloadsRepository());
    gh.lazySingleton<_i5.ISearchRepository>(() => _i6.SearchRepository());
    gh.factory<_i7.SearchBloc>(() => _i7.SearchBloc(
          gh<_i5.ISearchRepository>(),
          gh<_i4.DownloadsRepository>(),
        ));
    gh.factory<_i8.DownloadsBloc>(
        () => _i8.DownloadsBloc(gh<_i3.IDownloadsRepository>()));
    return this;
  }
}
