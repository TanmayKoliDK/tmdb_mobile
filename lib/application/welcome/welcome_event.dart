part of 'welcome_bloc.dart';

@freezed
class WelcomeEvent with _$WelcomeEvent {
  const factory WelcomeEvent.init() = _Init;
  const factory WelcomeEvent.onload() = _Onload;
  const factory WelcomeEvent.emitFromAnywhere({required WelcomeState state}) =
      _EmitFromAnywhere;
}
