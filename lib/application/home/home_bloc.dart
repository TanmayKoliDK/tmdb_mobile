import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_mobile/domain/core/configs/app_config.dart';
import 'package:tmdb_mobile/domain/tmdb/tmdb_repository.dart';
import 'package:tmdb_mobile/infrastructure/tmdb/dtos/trending_data_dto/trending_data_dto.dart';
import 'package:tmdb_mobile/infrastructure/tmdb/i_tmdb_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initState) : super(initState) {
    on<HomeEvent>((event, emit) {
      //
    });

    on<_Init>((event, emit) {
      add(const HomeEvent.onload());
    });
    on<_Onload>((event, emit) async {
      emit(state.copyWith(isLoadingTrendingSection: true));

      final res = await state.tmdbRepository.getTrendingForDayOrWeek(
          isDay: state.selectedTrendingValue == 'Today' ? true : false);

      emit(state.copyWith(
        lsOfTrending: res,
        isLoadingTrendingSection: false,
      ));
    });

    on<_OnChangeTrendingTime>((event, emit) async {
      if (event.selectedTime != state.selectedTrendingValue) {
        emit(state.copyWith(
            isLoadingTrendingSection: true,
            selectedTrendingValue: event.selectedTime));

        final res = await state.tmdbRepository.getTrendingForDayOrWeek(
            isDay: state.selectedTrendingValue == 'Today' ? true : false);

        emit(state.copyWith(
          lsOfTrending: res,
          isLoadingTrendingSection: false,
        ));
      }
    });

    on<_EmitFromAnywhere>((event, emit) {});
  }
}
