import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/tmdb/tmdb_repository.dart';
import '../../infrastructure/tmdb/i_tmdb_repository.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(MovieDetailsState initState) : super(initState) {
    on<MovieDetailsEvent>((event, emit) {});

    on<_Init>((event, emit) {});
    on<_Onload>((event, emit) {});

    on<_EmitFromAnywhere>((event, emit) {});
  }
}
