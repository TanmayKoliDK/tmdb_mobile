import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initState) : super(initState) {
    on<HomeEvent>((event, emit) {
      //
    });

    on<_Init>((event, emit) {});
    on<_Onload>((event, emit) {});
    on<_EmitFromAnywhere>((event, emit) {});
  }
}
