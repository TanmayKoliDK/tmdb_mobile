import 'dart:convert';

import 'package:tmdb_mobile/domain/tmdb/tmdb_repository.dart';

import 'package:http/http.dart' as http;
import 'package:tmdb_mobile/infrastructure/tmdb/dtos/top_rating_data_dto/topratingdatadto.dart';
import 'package:tmdb_mobile/infrastructure/tmdb/dtos/trending_data_dto/trending_data_dto.dart';

import '../../domain/core/constants/api_constants.dart';

class ITMDBRepository extends TMDBRepository {
  final String apiUrl;
  final String apiKey;

  ITMDBRepository({required this.apiUrl, required this.apiKey});

  @override
  Future<List<TrendingDataDto>> getTrendingForDayOrWeek({
    bool isDay = true,
  }) async {
    List<TrendingDataDto> lsOfTrending = [];
    try {
      String url =
          '$apiUrl${isDay ? ApiConstants.trendingForDay : ApiConstants.trendingForWeek}?api_key=$apiKey';

      final request = http.Request('GET', Uri.parse(url));

      http.StreamedResponse res = await request.send();

      final resultResponse = await http.Response.fromStream(res);

      final resData = jsonDecode(resultResponse.body);
      List<dynamic> lsOfResults = resData['results'];

      for (var data in lsOfResults) {
        lsOfTrending.add(TrendingDataDto.fromJson(data));
      }

      return lsOfTrending;
    } catch (e) {
      return lsOfTrending;
    }
  }

  @override
  Future<List<TopRatingDataDto>> getTopRatingMovies() async {
    List<TopRatingDataDto> lsOfTopRating = [];
    try {
      String url = '$apiUrl${ApiConstants.topRatingMovie}?api_key=$apiKey';

      final request = http.Request('GET', Uri.parse(url));

      http.StreamedResponse res = await request.send();

      final resultResponse = await http.Response.fromStream(res);

      final resData = jsonDecode(resultResponse.body);
      List<dynamic> lsOfResults = resData['results'];

      for (var data in lsOfResults) {
        lsOfTopRating.add(TopRatingDataDto.fromJson(data));
      }

      return lsOfTopRating;
    } catch (e) {
      return lsOfTopRating;
    }
  }
}
