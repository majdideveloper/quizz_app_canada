

import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/auth_failure.dart';
import '../../../../core/utils/error_mapper.dart';
import '../../domain/entities/user_entity.dart';

import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';



class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  
  AuthRepositoryImpl({required this.remoteDataSource});
  
  @override
  Future<Either<AuthFailure, UserEntity>> signIn(String email, String password) async {
    try {
      final userModel = await remoteDataSource.signIn(email, password);
      return right(userModel.toEntity());
    } catch (e) {
      return left(ErrorMapper.mapPocketBaseAuthError(e));
    }
  }
  
  @override
  Future<Either<AuthFailure, UserEntity>> signUp(String email, String password, String name) async {
    try {
      final userModel = await remoteDataSource.signUp(email, password, name);
      return right(userModel.toEntity());
    } catch (e) {
      return left(ErrorMapper.mapPocketBaseAuthError(e));
    }
  }
  
  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await remoteDataSource.signOut();
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }
  
  @override
  Future<Option<UserEntity>> getSignedInUser() async {
    try {
      final userModel = await remoteDataSource.getCurrentUser();
      return userModel != null ? some(userModel.toEntity()) : none();
    } catch (e) {
      return none();
    }
  }
}