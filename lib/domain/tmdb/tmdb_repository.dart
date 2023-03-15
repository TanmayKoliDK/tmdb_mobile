import 'package:tmdb_mobile/infrastructure/tmdb/dtos/trending_data_dto/trending_data_dto.dart';

import '../../infrastructure/tmdb/dtos/top_rating_data_dto/topratingdatadto.dart';

abstract class TMDBRepository {
  Future<List<TrendingDataDto>> getTrendingForDayOrWeek({
    bool isDay = true,
  });

  Future<List<TopRatingDataDto>> getTopRatingMovies();
}
