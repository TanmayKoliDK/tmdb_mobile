part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = _Init;
  const factory HomeEvent.onload() = _Onload;
  const factory HomeEvent.emitFromAnywhere({required HomeState state}) =
      _EmitFromAnywhere;
}
