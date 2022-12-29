import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") required String? posterpath,
    @JsonKey(name: "title") required String? title,
  }) = _downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
