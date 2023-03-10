import 'package:tmdb_mobile/infrastructure/tmdb/dtos/trending_data_dto/trending_data_dto.dart';

abstract class TMDBRepository {
  Future<List<TrendingDataDto>> getTrendingForDayOrWeek({
    bool isDay = true,
  });
}
