import 'package:dartz/dartz.dart';

import '../../infrastructure/auth/dtos/user/user_dto.dart';

abstract class AuthRepository {
  Future<Either<String, UserDto>> signUp({
    required String email,
    required String name,
    required String password,
  });
  Future<Either<String, UserDto>> login(
      {required String email, required String password});

  Future<UserDto?> authenticateUser();

  Future<Either<String, UserDto>> updateProfile({
    required Map<String, dynamic> updateData,
    required String uid,
  });

  Future<bool> forgotPassword({required String email});
  Future<Either<String, String>> changePassword(
      {required String email,
      required String oldPassword,
      required String password});

  Future<bool> logoutUser();
}
