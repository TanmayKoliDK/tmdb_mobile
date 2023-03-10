part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool isLoding,
    required String errorMessge,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
        isFailed: false,
        isSuccess: false,
        noUse: false,
        isLoding: false,
        errorMessge: '');
  }
}
