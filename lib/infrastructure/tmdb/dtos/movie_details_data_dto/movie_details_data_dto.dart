// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_data_dto.freezed.dart';
part 'movie_details_data_dto.g.dart';

@freezed
class MovieDetailsDataDto with _$MovieDetailsDataDto {
  factory MovieDetailsDataDto({
    required int id,
    String? name,
    @JsonKey(defaultValue: 'N/A') String? title,
    String? backdrop_path,
    String? poster_path,
    String? media_type,
    String? overview,
    String? tagline,
    String? first_air_date,
    @JsonKey(defaultValue: 'N/A') String? release_date,
    double? vote_average,
  }) = _MovieDetailsDataDto;

  factory MovieDetailsDataDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsDataDtoFromJson(
        json,
      );
}
