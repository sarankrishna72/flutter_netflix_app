// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mediaQuery) getSearchList,
    required TResult Function() getTopSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mediaQuery)? getSearchList,
    TResult? Function()? getTopSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mediaQuery)? getSearchList,
    TResult Function()? getTopSearchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSearchList value) getSearchList,
    required TResult Function(_GetTopSearchList value) getTopSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSearchList value)? getSearchList,
    TResult? Function(_GetTopSearchList value)? getTopSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSearchList value)? getSearchList,
    TResult Function(_GetTopSearchList value)? getTopSearchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSearchListCopyWith<$Res> {
  factory _$$_GetSearchListCopyWith(
          _$_GetSearchList value, $Res Function(_$_GetSearchList) then) =
      __$$_GetSearchListCopyWithImpl<$Res>;
  @useResult
  $Res call({String mediaQuery});
}

/// @nodoc
class __$$_GetSearchListCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_GetSearchList>
    implements _$$_GetSearchListCopyWith<$Res> {
  __$$_GetSearchListCopyWithImpl(
      _$_GetSearchList _value, $Res Function(_$_GetSearchList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaQuery = null,
  }) {
    return _then(_$_GetSearchList(
      mediaQuery: null == mediaQuery
          ? _value.mediaQuery
          : mediaQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSearchList implements _GetSearchList {
  const _$_GetSearchList({required this.mediaQuery});

  @override
  final String mediaQuery;

  @override
  String toString() {
    return 'SearchEvent.getSearchList(mediaQuery: $mediaQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSearchList &&
            (identical(other.mediaQuery, mediaQuery) ||
                other.mediaQuery == mediaQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mediaQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSearchListCopyWith<_$_GetSearchList> get copyWith =>
      __$$_GetSearchListCopyWithImpl<_$_GetSearchList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mediaQuery) getSearchList,
    required TResult Function() getTopSearchList,
  }) {
    return getSearchList(mediaQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mediaQuery)? getSearchList,
    TResult? Function()? getTopSearchList,
  }) {
    return getSearchList?.call(mediaQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mediaQuery)? getSearchList,
    TResult Function()? getTopSearchList,
    required TResult orElse(),
  }) {
    if (getSearchList != null) {
      return getSearchList(mediaQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSearchList value) getSearchList,
    required TResult Function(_GetTopSearchList value) getTopSearchList,
  }) {
    return getSearchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSearchList value)? getSearchList,
    TResult? Function(_GetTopSearchList value)? getTopSearchList,
  }) {
    return getSearchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSearchList value)? getSearchList,
    TResult Function(_GetTopSearchList value)? getTopSearchList,
    required TResult orElse(),
  }) {
    if (getSearchList != null) {
      return getSearchList(this);
    }
    return orElse();
  }
}

abstract class _GetSearchList implements SearchEvent {
  const factory _GetSearchList({required final String mediaQuery}) =
      _$_GetSearchList;

  String get mediaQuery;
  @JsonKey(ignore: true)
  _$$_GetSearchListCopyWith<_$_GetSearchList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTopSearchListCopyWith<$Res> {
  factory _$$_GetTopSearchListCopyWith(
          _$_GetTopSearchList value, $Res Function(_$_GetTopSearchList) then) =
      __$$_GetTopSearchListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTopSearchListCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_GetTopSearchList>
    implements _$$_GetTopSearchListCopyWith<$Res> {
  __$$_GetTopSearchListCopyWithImpl(
      _$_GetTopSearchList _value, $Res Function(_$_GetTopSearchList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetTopSearchList implements _GetTopSearchList {
  const _$_GetTopSearchList();

  @override
  String toString() {
    return 'SearchEvent.getTopSearchList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTopSearchList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mediaQuery) getSearchList,
    required TResult Function() getTopSearchList,
  }) {
    return getTopSearchList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mediaQuery)? getSearchList,
    TResult? Function()? getTopSearchList,
  }) {
    return getTopSearchList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mediaQuery)? getSearchList,
    TResult Function()? getTopSearchList,
    required TResult orElse(),
  }) {
    if (getTopSearchList != null) {
      return getTopSearchList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSearchList value) getSearchList,
    required TResult Function(_GetTopSearchList value) getTopSearchList,
  }) {
    return getTopSearchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSearchList value)? getSearchList,
    TResult? Function(_GetTopSearchList value)? getTopSearchList,
  }) {
    return getTopSearchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSearchList value)? getSearchList,
    TResult Function(_GetTopSearchList value)? getTopSearchList,
    required TResult orElse(),
  }) {
    if (getTopSearchList != null) {
      return getTopSearchList(this);
    }
    return orElse();
  }
}

abstract class _GetTopSearchList implements SearchEvent {
  const factory _GetTopSearchList() = _$_GetTopSearchList;
}

/// @nodoc
mixin _$SearchState {
  List<DownloadsModel>? get idleList => throw _privateConstructorUsedError;
  List<DownloadsModel>? get searchList => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<DownloadsModel>>>
      get searchSuccessOrFailureOtion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<DownloadsModel>? idleList,
      List<DownloadsModel>? searchList,
      bool? isLoading,
      Option<Either<MainFailures, List<DownloadsModel>>>
          searchSuccessOrFailureOtion});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idleList = freezed,
    Object? searchList = freezed,
    Object? isLoading = freezed,
    Object? searchSuccessOrFailureOtion = null,
  }) {
    return _then(_value.copyWith(
      idleList: freezed == idleList
          ? _value.idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>?,
      searchList: freezed == searchList
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchSuccessOrFailureOtion: null == searchSuccessOrFailureOtion
          ? _value.searchSuccessOrFailureOtion
          : searchSuccessOrFailureOtion // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<DownloadsModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DownloadsModel>? idleList,
      List<DownloadsModel>? searchList,
      bool? isLoading,
      Option<Either<MainFailures, List<DownloadsModel>>>
          searchSuccessOrFailureOtion});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idleList = freezed,
    Object? searchList = freezed,
    Object? isLoading = freezed,
    Object? searchSuccessOrFailureOtion = null,
  }) {
    return _then(_$_SearchState(
      idleList: freezed == idleList
          ? _value._idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>?,
      searchList: freezed == searchList
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchSuccessOrFailureOtion: null == searchSuccessOrFailureOtion
          ? _value.searchSuccessOrFailureOtion
          : searchSuccessOrFailureOtion // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<DownloadsModel>>>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {final List<DownloadsModel>? idleList,
      final List<DownloadsModel>? searchList,
      this.isLoading,
      required this.searchSuccessOrFailureOtion})
      : _idleList = idleList,
        _searchList = searchList;

  final List<DownloadsModel>? _idleList;
  @override
  List<DownloadsModel>? get idleList {
    final value = _idleList;
    if (value == null) return null;
    if (_idleList is EqualUnmodifiableListView) return _idleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DownloadsModel>? _searchList;
  @override
  List<DownloadsModel>? get searchList {
    final value = _searchList;
    if (value == null) return null;
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLoading;
  @override
  final Option<Either<MainFailures, List<DownloadsModel>>>
      searchSuccessOrFailureOtion;

  @override
  String toString() {
    return 'SearchState(idleList: $idleList, searchList: $searchList, isLoading: $isLoading, searchSuccessOrFailureOtion: $searchSuccessOrFailureOtion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality().equals(other._idleList, _idleList) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchSuccessOrFailureOtion,
                    searchSuccessOrFailureOtion) ||
                other.searchSuccessOrFailureOtion ==
                    searchSuccessOrFailureOtion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_idleList),
      const DeepCollectionEquality().hash(_searchList),
      isLoading,
      searchSuccessOrFailureOtion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final List<DownloadsModel>? idleList,
      final List<DownloadsModel>? searchList,
      final bool? isLoading,
      required final Option<Either<MainFailures, List<DownloadsModel>>>
          searchSuccessOrFailureOtion}) = _$_SearchState;

  @override
  List<DownloadsModel>? get idleList;
  @override
  List<DownloadsModel>? get searchList;
  @override
  bool? get isLoading;
  @override
  Option<Either<MainFailures, List<DownloadsModel>>>
      get searchSuccessOrFailureOtion;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
