part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool isLoading,
    required bool isLoadingTrendingSection,
    required List<TrendingDataDto> lsOfTrending,
    required List<String> trendingDropdownList,
    required String selectedTrendingValue,
    required TMDBRepository tmdbRepository,
    required String errorMessage,
  }) = _HomeState;

  factory HomeState.initial({
    required String apiBaseUrl,
    required String apiKey,
  }) {
    return HomeState(
        isLoadingTrendingSection: false,
        tmdbRepository: ITMDBRepository(apiUrl: apiBaseUrl, apiKey: apiKey),
        selectedTrendingValue: 'Today',
        trendingDropdownList: [
          'Today',
          'This Week',
        ],
        lsOfTrending: [],
        isFailed: false,
        isSuccess: false,
        noUse: false,
        isLoading: false,
        errorMessage: '');
  }
}
