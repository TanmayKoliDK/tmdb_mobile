part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required bool noUse,
    required bool validateForm,
    required String errorMessage,
    required GlobalKey<FormState> formKey,
    required AuthRepository authRepository,
    required TextEditingController emailController,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial({
    required String apiBaseUrl,
  }) =>
      ResetPasswordState(
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        validateForm: false,
        authRepository: IAuthRepository(apiBaseUrl: apiBaseUrl),
        formKey: GlobalKey<FormState>(),
        noUse: false,
        errorMessage: '',
        emailController: TextEditingController(),
      );
}
