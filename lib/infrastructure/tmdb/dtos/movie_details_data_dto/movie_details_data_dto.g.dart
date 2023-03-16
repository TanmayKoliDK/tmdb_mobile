// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailsDataDto _$$_MovieDetailsDataDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MovieDetailsDataDto(
      id: json['id'] as int,
      name: json['name'] as String?,
      title: json['title'] as String? ?? 'N/A',
      backdrop_path: json['backdrop_path'] as String?,
      poster_path: json['poster_path'] as String?,
      media_type: json['media_type'] as String?,
      overview: json['overview'] as String?,
      tagline: json['tagline'] as String?,
      first_air_date: json['first_air_date'] as String?,
      release_date: json['release_date'] as String? ?? 'N/A',
      vote_average: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MovieDetailsDataDtoToJson(
        _$_MovieDetailsDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'backdrop_path': instance.backdrop_path,
      'poster_path': instance.poster_path,
      'media_type': instance.media_type,
      'overview': instance.overview,
      'tagline': instance.tagline,
      'first_air_date': instance.first_air_date,
      'release_date': instance.release_date,
      'vote_average': instance.vote_average,
    };
