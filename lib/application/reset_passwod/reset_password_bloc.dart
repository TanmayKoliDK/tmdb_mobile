import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/auth_repositorry.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../infrastructure/auth/i_auth_repository.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(ResetPasswordState initState) : super(initState) {
    on<ResetPasswordEvent>((event, emit) {
      //
    });

    on<_OnSendEmail>((event, emit) async {
      final email = state.emailController.text;
      if (email.isEmpty || !EmailValidator.validate(email)) {
        emit(state.copyWith(validateForm: true));
        Future.delayed(const Duration(milliseconds: 100))
            .then((value) => state.formKey.currentState!.validate());
        return;
      }

      emit(state.copyWith(isLoading: true));

      final res = await state.authRepository.forgotPassword(email: email);

      if (res) {
        emit(state.copyWith(
          isFailed: false,
          isLoading: false,
          isSuccess: true,
          errorMessage: '',
        ));
      } else {
        emit(state.copyWith(
          isFailed: true,
          isLoading: false,
          isSuccess: false,
          errorMessage: ErrorConstants.failedToSendEmail,
        ));
      }
    });

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
  }
}
