// ignore_for_file: invalid_annotation_target, non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topratingdatadto.freezed.dart';
part 'topratingdatadto.g.dart';

@freezed
class TopRatingDataDto with _$TopRatingDataDto {
  factory TopRatingDataDto({
    required int id,
    String? name,
    @JsonKey(defaultValue: 'N/A') String? title,
    String? backdrop_path,
    String? poster_path,
    //String? media_type,
    String? first_air_date,
    @JsonKey(defaultValue: 'N/A') String? release_date,
    double? vote_average,
  }) = _TopRatingDataDto;

  factory TopRatingDataDto.fromJson(Map<String, dynamic> json) =>
      _$TopRatingDataDtoFromJson(
        json,
      );
}
