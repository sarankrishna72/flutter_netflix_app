// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadsModel _$DownloadsModelFromJson(Map<String, dynamic> json) {
  return _DownloadsModel.fromJson(json);
}

/// @nodoc
mixin _$DownloadsModel {
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsModelCopyWith<DownloadsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsModelCopyWith<$Res> {
  factory $DownloadsModelCopyWith(
          DownloadsModel value, $Res Function(DownloadsModel) then) =
      _$DownloadsModelCopyWithImpl<$Res, DownloadsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'id') int? id});
}

/// @nodoc
class _$DownloadsModelCopyWithImpl<$Res, $Val extends DownloadsModel>
    implements $DownloadsModelCopyWith<$Res> {
  _$DownloadsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadsModelCopyWith<$Res>
    implements $DownloadsModelCopyWith<$Res> {
  factory _$$_DownloadsModelCopyWith(
          _$_DownloadsModel value, $Res Function(_$_DownloadsModel) then) =
      __$$_DownloadsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'id') int? id});
}

/// @nodoc
class __$$_DownloadsModelCopyWithImpl<$Res>
    extends _$DownloadsModelCopyWithImpl<$Res, _$_DownloadsModel>
    implements _$$_DownloadsModelCopyWith<$Res> {
  __$$_DownloadsModelCopyWithImpl(
      _$_DownloadsModel _value, $Res Function(_$_DownloadsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_DownloadsModel(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadsModel implements _DownloadsModel {
  const _$_DownloadsModel(
      {@JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'id') required this.id});

  factory _$_DownloadsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsModelFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'id')
  final int? id;

  @override
  String toString() {
    return 'DownloadsModel(posterPath: $posterPath, title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadsModel &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath, title, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadsModelCopyWith<_$_DownloadsModel> get copyWith =>
      __$$_DownloadsModelCopyWithImpl<_$_DownloadsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsModelToJson(
      this,
    );
  }
}

abstract class _DownloadsModel implements DownloadsModel {
  const factory _DownloadsModel(
      {@JsonKey(name: 'poster_path') required final String? posterPath,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'id') required final int? id}) = _$_DownloadsModel;

  factory _DownloadsModel.fromJson(Map<String, dynamic> json) =
      _$_DownloadsModel.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadsModelCopyWith<_$_DownloadsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
