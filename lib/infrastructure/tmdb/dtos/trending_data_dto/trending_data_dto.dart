// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_data_dto.freezed.dart';
part 'trending_data_dto.g.dart';

@freezed
class TrendingDataDto with _$TrendingDataDto {
  factory TrendingDataDto({
    required int id,
    String? name,
    @JsonKey(defaultValue: 'N/A') String? title,
    String? backdrop_path,
    String? poster_path,
    String? media_type,
    String? first_air_date,
    double? vote_average,
  }) = _TrendingDataDto;

  factory TrendingDataDto.fromJson(Map<String, dynamic> json) =>
      _$TrendingDataDtoFromJson(
        json,
      );
}
