import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/auth/auth_repositorry.dart';
import '../../domain/core/constants/collection_constants.dart';
import '../../domain/core/constants/string_constants.dart';

import 'dtos/user/user_dto.dart';

class IAuthRepository extends AuthRepository {
  final _firestore = FirebaseFirestore.instance;
  final String apiBaseUrl;
  IAuthRepository({required this.apiBaseUrl});

  @override
  Future<Either<String, UserDto>> signUp({
    required String email,
    required String name,
    required String password,
  }) async {
    UserDto? user;

    try {
      final output = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final uid = output.user!.uid;
      DateTime timeNow = DateTime.now();
      final UserDto newUser = UserDto(
        email: email,
        id: uid,
        name: name,
        createdAt: timeNow,
        updatedAt: timeNow,
      );
      await _firestore
          .collection(CollectionConstants.users)
          .doc(uid)
          .set(
            newUser.toJson()
              ..['created_at'] = Timestamp.fromDate(newUser.createdAt)
              ..['updated_at'] = Timestamp.fromDate(newUser.updatedAt),
          )
          .then((_) async {
        await _firestore
            .collection(CollectionConstants.users)
            .doc(newUser.id)
            .get()
            .then((userObject) {
          user = UserDto.fromJson(userObject.data()!);
        });
      });

      return right(user!);
    } on FirebaseAuthException catch (e) {
      String error = '';
      if (e.code.contains('email-already-in-use')) {
        error = ErrorConstants.emailExist;
      } else if (e.code.contains('invalid-email')) {
        error = ErrorConstants.invalidEmail;
      } else if (e.code.contains('operation-not-allowed')) {
        error = ErrorConstants.userDisabled;
      } else if (e.code.contains('weak-password')) {
        error = ErrorConstants.weakPassword;
      } else {
        error = ErrorConstants.genericError;
      }
      return left(error);
    } catch (error) {
      return left(ErrorConstants.genericError);
    }
  }

  @override
  Future<Either<String, UserDto>> login(
      {required String email, required String password}) async {
    try {
      final res = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final uid = res.user!.uid;
      final userObject =
          await _firestore.collection(CollectionConstants.users).doc(uid).get();
      final user = UserDto.fromJson(userObject.data()!);

      return right(user);
    } on FirebaseAuthException catch (e) {
      String error = '';
      if (e.code.contains('invalid-email')) {
        error = ErrorConstants.invalidEmail;
      } else if (e.code.contains('user-disabled')) {
        error = ErrorConstants.authFailed;
      } else if (e.code.contains('user-not-found')) {
        error = ErrorConstants.userNotFound;
      } else if (e.code.contains('wrong-password')) {
        error = ErrorConstants.authFailed;
      } else {
        error = ErrorConstants.genericError;
      }
      return left(error);
    } catch (error) {
      return left(ErrorConstants.genericError);
    }
  }

  @override
  Future<UserDto?> authenticateUser() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        final completer = Completer<User?>();
        FirebaseAuth.instance.authStateChanges().listen((event) {
          if (event != null) {
            completer.complete(event);
          } else {
            Future.delayed(const Duration(seconds: 2)).then((value) =>
                {if (!completer.isCompleted) completer.complete(event)});
          }
        });
        user = await completer.future;

        return null;
      }

      final userObject = await _firestore
          .collection(CollectionConstants.users)
          .doc(user.uid)
          .get();

      if (userObject.data() == null) {
        return null;
      }

      final userDto = UserDto.fromJson(userObject.data()!);
      return userDto;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<bool> logoutUser() async {
    //final user = FirebaseAuth.instance.currentUser!;

    await FirebaseAuth.instance.signOut();
    return true;
  }

  @override
  Future<Either<String, UserDto>> updateProfile(
      {required Map<String, dynamic> updateData, required String uid}) async {
    UserDto? updatedUser;
    try {
      await _firestore
          .collection(CollectionConstants.users)
          .doc(uid)
          .update(updateData);

      DocumentSnapshot fetchUser =
          await _firestore.collection(CollectionConstants.users).doc(uid).get();

      if (fetchUser.exists) {
        updatedUser =
            UserDto.fromJson(fetchUser.data() as Map<String, dynamic>);
      }

      return right(updatedUser!);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<bool> forgotPassword({required String email}) async {
    bool isLinkSent = false;
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email)
          .then((value) => isLinkSent = true);

      return isLinkSent;
    } catch (e) {
      return isLinkSent;
    }
  }

  @override
  Future<Either<String, String>> changePassword(
      {required String email,
      required String oldPassword,
      required String password}) async {
    try {
      final authRequest = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: oldPassword);
      final user = authRequest.user;
      if (user != null) {
        final String email = user.email!;

        await user.updatePassword(password);

        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        return right(email);
      } else {
        throw Exception();
      }
    } on FirebaseAuthException catch (e) {
      String error = '';
      if (e.code.contains('wrong-password')) {
        error = ErrorConstants.authFailed;
      } else {
        error = ErrorConstants.genericError;
      }
      return left(error);
    } catch (e) {
      return left(ErrorConstants.failedToUpdatePassword);
    }
  }

  //delete user account

  // @override
  // Future<bool> deleteAccount() async {
  //   try {
  //     String token = await FirebaseAuth.instance.currentUser!.getIdToken();

  //     var headers = {'Authorization': 'Bearer $token'};

  //     var request = http.Request(
  //         'POST', Uri.parse('$apiBaseUrl${APIConstants.deleteUserAccount}'));

  //     request.headers.addAll(headers);

  //     http.StreamedResponse response = await request.send();

  //     if (response.statusCode == 200) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } catch (e) {
  //     return false;
  //   }
  // }

//end
}
