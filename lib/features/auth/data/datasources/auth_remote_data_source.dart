import 'package:pocketbase/pocketbase.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signIn(String email, String password);
  Future<UserModel> signUp(String email, String password, String name);
  Future<void> signOut();
  Future<UserModel?> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final PocketBase pocketBase;
  
  AuthRemoteDataSourceImpl({required this.pocketBase});
  
  @override
  Future<UserModel> signIn(String email, String password) async {
    try {
      final authData = await pocketBase.collection('users').authWithPassword(
        email,
        password,
      );
      
      return UserModel.fromPocketBase({
        'id': authData.record!.id,
        'email': authData.record!.data['email'],
        'name': authData.record!.data['name'],
        'avatar': authData.record!.data['avatar'],
        'verified': authData.record!.data['verified'] ?? false,
      });
    } catch (e) {
      throw _handlePocketBaseError(e);
    }
  }
  
  @override
  Future<UserModel> signUp(String email, String password, String name) async {
    try {
      final record = await pocketBase.collection('users').create(body: {
        'email': email,
        'password': password,
        'passwordConfirm': password,
        'name': name,
      });
      
      // After creating the user, log them in
      return await signIn(email, password);
    } catch (e) {
      throw _handlePocketBaseError(e);
    }
  }
  
  @override
  Future<void> signOut() async {
    pocketBase.authStore.clear();
  }
  
  @override
  Future<UserModel?> getCurrentUser() async {
    if (!pocketBase.authStore.isValid) {
      return null;
    }
    
    try {
      final userId = pocketBase.authStore.model.id;
      final record = await pocketBase.collection('users').getOne(userId);
      
      return UserModel.fromPocketBase({
        'id': record.id,
        'email': record.data['email'],
        'name': record.data['name'],
        'avatar': record.data['avatar'],
        'verified': record.data['verified'] ?? false,
      });
    } catch (e) {
      return null;
    }
  }
  
  // Helper method to handle PocketBase errors
  Exception _handlePocketBaseError(dynamic error) {
    final errorMessage = error.toString();
    
    if (errorMessage.contains('Failed host lookup')) {
      return Exception('Network error: Unable to connect to server');
    } else if (errorMessage.contains('authentication') || 
               errorMessage.contains('Invalid login')) {
      return Exception('Invalid email or password');
    } else if (errorMessage.contains('exists') || 
               errorMessage.contains('already in use')) {
      return Exception('Email already in use');
    } else if (errorMessage.contains('validation')) {
      return Exception('Validation error: ${error.toString()}');
    } else {
      return Exception('An unexpected error occurred: ${error.toString()}');
    }
  }
}