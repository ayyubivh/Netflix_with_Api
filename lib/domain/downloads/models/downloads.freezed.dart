// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _downloads.fromJson(json);
}

/// @nodoc
mixin _$Downloads {
  @JsonKey(name: "poster_path")
  String? get posterpath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res, Downloads>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterpath});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res, $Val extends Downloads>
    implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterpath = freezed,
  }) {
    return _then(_value.copyWith(
      posterpath: freezed == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_downloadsCopyWith<$Res> implements $DownloadsCopyWith<$Res> {
  factory _$$_downloadsCopyWith(
          _$_downloads value, $Res Function(_$_downloads) then) =
      __$$_downloadsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterpath});
}

/// @nodoc
class __$$_downloadsCopyWithImpl<$Res>
    extends _$DownloadsCopyWithImpl<$Res, _$_downloads>
    implements _$$_downloadsCopyWith<$Res> {
  __$$_downloadsCopyWithImpl(
      _$_downloads _value, $Res Function(_$_downloads) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterpath = freezed,
  }) {
    return _then(_$_downloads(
      posterpath: freezed == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_downloads implements _downloads {
  const _$_downloads({@JsonKey(name: "poster_path") required this.posterpath});

  factory _$_downloads.fromJson(Map<String, dynamic> json) =>
      _$$_downloadsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterpath;

  @override
  String toString() {
    return 'Downloads(posterpath: $posterpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_downloads &&
            (identical(other.posterpath, posterpath) ||
                other.posterpath == posterpath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterpath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_downloadsCopyWith<_$_downloads> get copyWith =>
      __$$_downloadsCopyWithImpl<_$_downloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_downloadsToJson(
      this,
    );
  }
}

abstract class _downloads implements Downloads {
  const factory _downloads(
          {@JsonKey(name: "poster_path") required final String? posterpath}) =
      _$_downloads;

  factory _downloads.fromJson(Map<String, dynamic> json) =
      _$_downloads.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterpath;
  @override
  @JsonKey(ignore: true)
  _$$_downloadsCopyWith<_$_downloads> get copyWith =>
      throw _privateConstructorUsedError;
}
