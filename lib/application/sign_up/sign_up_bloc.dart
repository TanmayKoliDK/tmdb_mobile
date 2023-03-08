// ignore: depend_on_referenced_packages
import 'package:email_validator/email_validator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/auth_repositorry.dart';
import '../../infrastructure/auth/dtos/user/user_dto.dart';
import '../../infrastructure/auth/i_auth_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initState) : super(initState) {
    on<SignUpEvent>((event, emit) {});

    on<_Init>((event, emit) {});
    on<_Onload>((event, emit) {});

    on<_OnSignUp>((event, emit) async {
      final String email = state.emailController.text;
      final String name = state.nameController.text;
      final String password = state.passwordController.text;
      final String confirmPassword = state.confirmPasswordController.text;

      if (email.isEmpty ||
          password.isEmpty ||
          name.isEmpty ||
          !EmailValidator.validate(email) ||
          confirmPassword.isEmpty ||
          confirmPassword != password) {
        emit(state.copyWith(validateForm: true));
        Future.delayed(const Duration(milliseconds: 100))
            .then((value) => state.formKey.currentState!.validate());
        return;
      }

      emit(state.copyWith(isFailed: false, isLoading: true));

      Either<String, UserDto> res = await state.authRepository.signUp(
        email: email,
        name: name,
        password: password,
      );

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
          userDto: r,
          errorMessage: '',
        ));
      });
    });

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
  }
}
