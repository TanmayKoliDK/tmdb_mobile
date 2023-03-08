part of 'welcome_bloc.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool isLoding,
    required String errorMessge,
  }) = _WelcomeState;

  factory WelcomeState.initial() {
    return const WelcomeState(
        isFailed: false,
        isSuccess: false,
        noUse: false,
        isLoding: false,
        errorMessge: '');
  }
}
