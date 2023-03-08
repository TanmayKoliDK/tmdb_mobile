import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';
part 'welcome_bloc.freezed.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc(WelcomeState initState) : super(initState) {
    on<WelcomeEvent>((event, emit) {});

    on<_Init>((event, emit) {});
    on<_Onload>((event, emit) {});
    on<_EmitFromAnywhere>((event, emit) {});
  }
}
