part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool isLoading,
    required String errorMessage,
    required TMDBRepository tmdbRepository,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial({
    required String apiBaseUrl,
    required String apiKey,
  }) {
    return MovieDetailsState(
        tmdbRepository: ITMDBRepository(apiUrl: apiBaseUrl, apiKey: apiKey),
        isFailed: false,
        isSuccess: false,
        noUse: false,
        isLoading: false,
        errorMessage: '');
  }
}
