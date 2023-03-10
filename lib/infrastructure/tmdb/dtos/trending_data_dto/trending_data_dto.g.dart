// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendingDataDto _$$_TrendingDataDtoFromJson(Map<String, dynamic> json) =>
    _$_TrendingDataDto(
      id: json['id'] as int,
      name: json['name'] as String?,
      title: json['title'] as String? ?? 'N/A',
      backdrop_path: json['backdrop_path'] as String?,
      poster_path: json['poster_path'] as String?,
      media_type: json['media_type'] as String?,
      first_air_date: json['first_air_date'] as String?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TrendingDataDtoToJson(_$_TrendingDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'backdrop_path': instance.backdrop_path,
      'poster_path': instance.poster_path,
      'media_type': instance.media_type,
      'first_air_date': instance.first_air_date,
      'vote_average': instance.vote_average,
    };
