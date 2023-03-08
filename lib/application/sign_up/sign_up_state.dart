part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool isLoading,
    required bool validateForm,
    required bool showPassword,
    required bool showConfirmPassword,
    required String errorMessage,
    UserDto? userDto,
    required GlobalKey<FormState> formKey,
    required AuthRepository authRepository,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController confirmPasswordController,
  }) = _SignUpState;

  factory SignUpState.initial({
    required String apiBaseUrl,
  }) =>
      SignUpState(
        isFailed: false,
        isSuccess: false,
        noUse: false,
        isLoading: false,
        errorMessage: '',
        formKey: GlobalKey<FormState>(),
        showConfirmPassword: false,
        showPassword: false,
        validateForm: false,
        authRepository: IAuthRepository(apiBaseUrl: apiBaseUrl),
        nameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmPasswordController: TextEditingController(),
      );
}
