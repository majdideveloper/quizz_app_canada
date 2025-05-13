

import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository repository;
  
  GetCurrentUserUseCase(this.repository);
  
  Future<Option<UserEntity>> execute() {
    return repository.getSignedInUser();
  }
}