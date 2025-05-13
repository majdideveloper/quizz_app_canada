import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/auth_failure.dart';
import '../entities/user_entity.dart';

import '../repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository repository;
  
  SignInUseCase(this.repository);
  
  Future<Either<AuthFailure, UserEntity>> execute(String email, String password) {
    return repository.signIn(email, password);
  }
}