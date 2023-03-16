part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool isLoading,
    required bool isLoadingMovieDetailsSection,
    MovieDetailsDataDto? movieDetails,
    required TMDBRepository tmdbRepository,
    required String errorMessage,
    required String movieId,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial({
    required String apiBaseUrl,
    required String apiKey,
    required String movieId,
  }) {
    return MovieDetailsState(
      movieId: movieId,
      isLoadingMovieDetailsSection: false,
      tmdbRepository: ITMDBRepository(apiUrl: apiBaseUrl, apiKey: apiKey),
      isFailed: false,
      isSuccess: false,
      noUse: false,
      isLoading: false,
      errorMessage: '',
    );
  }
}
