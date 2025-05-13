import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/auth_failure.dart';

import '../repositories/auth_repository.dart';

class SignOutUseCase {
  final AuthRepository repository;
  
  SignOutUseCase(this.repository);
  
  Future<Either<AuthFailure, Unit>> execute() {
    return repository.signOut();
  }
}