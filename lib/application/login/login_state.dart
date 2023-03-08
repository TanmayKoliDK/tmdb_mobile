part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool isLoading,
    required bool validateForm,
    required bool showPassword,
    required String errorMessage,
    UserDto? userDto,
    required GlobalKey<FormState> formKey,
    required AuthRepository authRepository,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) = _LoginState;

  factory LoginState.initial({
    required String email,
    required String apiBaseUrl,
  }) {
    return LoginState(
        isFailed: false,
        isSuccess: false,
        noUse: false,
        isLoading: false,
        errorMessage: '',
        validateForm: false,
        showPassword: false,
        authRepository: IAuthRepository(apiBaseUrl: apiBaseUrl),
        formKey: GlobalKey<FormState>(),
        emailController: TextEditingController(text: email),
        passwordController: TextEditingController(),);
  }
}
