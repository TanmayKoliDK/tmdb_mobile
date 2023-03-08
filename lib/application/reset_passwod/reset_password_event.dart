part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.onSendEmail() = _OnSendEmail;
  const factory ResetPasswordEvent.emitFromAnywhere(
     {required ResetPasswordState state}
  ) = _EmitFromAnywhere;

}