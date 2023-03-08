// ignore: depend_on_referenced_packages
import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/auth_repositorry.dart';
import '../../infrastructure/auth/dtos/user/user_dto.dart';
import '../../infrastructure/auth/i_auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initState) : super(initState) {
    on<LoginEvent>((event, emit) {});

    on<_Init>((event, emit) {});
    on<_Onload>((event, emit) {});

    on<_OnLogin>(((event, emit) async {
      final String email = state.emailController.text;
      final String password = state.passwordController.text;

      if (email.isEmpty ||
          password.isEmpty ||
          !EmailValidator.validate(email)) {
        emit(state.copyWith(validateForm: true));
        Future.delayed(const Duration(milliseconds: 100))
            .then((value) => state.formKey.currentState!.validate());
        return;
      }

      emit(state.copyWith(isFailed: false, isLoading: true));

      Either<String, UserDto> res =
          await state.authRepository.login(email: email, password: password);

      res.fold((l) {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          isSuccess: false,
          errorMessage: l,
        ));
      }, (r) {
        emit(state.copyWith(
          isLoading: false,
          isFailed: false,
          isSuccess: true,
          errorMessage: '',
          userDto: r,
        ));
      });
    }));

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
  }
}
