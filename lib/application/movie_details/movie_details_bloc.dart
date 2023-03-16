import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/tmdb/tmdb_repository.dart';
import '../../infrastructure/tmdb/dtos/movie_details_data_dto/movie_details_data_dto.dart';
import '../../infrastructure/tmdb/i_tmdb_repository.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(MovieDetailsState initState) : super(initState) {
    on<MovieDetailsEvent>((event, emit) {
      //
    });

    on<_Init>((event, emit) {
      add(const MovieDetailsEvent.onload());
    });
    on<_Onload>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final res = await state.tmdbRepository.getMovieDetails(movieId: state.movieId);

      emit(state.copyWith(
        movieDetails: res,
        isLoading: false,
      ));
    });

    on<_EmitFromAnywhere>((event, emit) {});
  }
}
