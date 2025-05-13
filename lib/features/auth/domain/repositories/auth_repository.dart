

import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/auth_failure.dart';
import 'package:quizz_app_canada/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, UserEntity>> signIn(String email, String password);
  Future<Either<AuthFailure, UserEntity>> signUp(String email, String password, String name);
  Future<Either<AuthFailure, Unit>> signOut();
  Future<Option<UserEntity>> getSignedInUser();
}