part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.init() = _Init;
  const factory LoginEvent.onload() = _Onload;
  const factory LoginEvent.onLogin() = _OnLogin;
  const factory LoginEvent.emitFromAnywhere({required LoginState state}) =
      _EmitFromAnywhere;
}
