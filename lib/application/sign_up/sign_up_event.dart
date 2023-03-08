part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.init() = _Init;
  const factory SignUpEvent.onSignUp() = _OnSignUp;
  const factory SignUpEvent.onload() = _Onload;
  const factory SignUpEvent.emitFromAnywhere({required SignUpState state}) =
      _EmitFromAnywhere;
}
