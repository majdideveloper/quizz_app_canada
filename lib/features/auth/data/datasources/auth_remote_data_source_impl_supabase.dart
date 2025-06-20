import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:quizz_app_canada/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDataSourceImplSupabase implements AuthRemoteDataSource {
  final SupabaseClient supabase;

  AuthRemoteDataSourceImplSupabase({required this.supabase});

  @override
  Future<UserModel> signIn(String email, String password) async {
    try {
      final response = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      final user = response.user;
      if (user == null) throw Exception("User not found");

      // final profile = await _getUserProfile(user.id);

      return UserModel(
        id: user.id,
        email: user.email ?? '',
        name: user.email ?? '',
        role: user.role ?? 'user',
        // avatar: profile['avatar'] ?? '',
        // verified: user.emailConfirmedAt != null,
      );
    } catch (e) {
      throw _handleSupabaseError(e);
    }
  }

  // @override
  // Future<UserModel> signUp(String email, String password, String name) async {
  //   try {
  //     AppLogger.logger
  //         .d('Signing up with email: $email and password: $password');
  //     final response = await supabase.auth.signUp(
  //       email: email,
  //       password: password,
  //       emailRedirectTo: 'majdideveloper@gmail.com',
  //       data: {'name': name}, // store name in user metadata
  //     );
  //     AppLogger.logger.d('Sign-up response: ${response.toString()}');

  //     final user = response.user;
  //     if (user == null) throw Exception("Sign-up failed");

  //     // Store additional profile info in a separate table (optional)
  //     await supabase.from('users').insert({
  //       'id': user.id,
  //       'email': user.email,
  //       'name': 'John Doe',
  //       'subscription': 'free', // optional
  //       'hour_study': 0,
  //     });

  //     return await signIn(email, password);
  //   } catch (e) {
  //     AppLogger.logger.e('Sign-up error: $e');
  //     throw _handleSupabaseError(e);
  //   }
  // }
  @override
  Future<UserModel> signUp(String email, String password, String name) async {
    try {
      AppLogger.logger.d('Signing up with email: $email');

      final response = await supabase.auth.signUp(
        email: email,
        password: password,
        emailRedirectTo:
            'majdideveloper@gmail.com', // optional if not using magic link
        data: {
          'name': name, // metadata stored in auth.users
        },
      );

      final user = response.user;
      if (user == null) {
        throw Exception("Sign-up failed: No user returned.");
      }

      AppLogger.logger.d('Sign-up successful for user ID: ${user.id}');

      // Insert additional profile data into custom "users" table
      await supabase.from('users').insert({
        'id': user.id,
        'email': user.email,
        'name': name,
        'subscription': 'free',
        'hour_study': 0.0,
      });

      // Optionally sign in immediately
      return await signIn(email, password);
    } catch (e, stackTrace) {
      AppLogger.logger.e('Sign-up error', error: e, stackTrace: stackTrace);
      throw _handleSupabaseError(e);
    }
  }

  @override
  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final session = supabase.auth.currentSession;
    final user = session?.user;
    if (user == null) return null;

    // final profile = await _getUserProfile(user.id);

    return UserModel(
        id: user.id,
        email: user.email ?? '',
        name: user.email ?? '',
        role: user.role ?? 'user'
        // avatar: profile['avatar'] ?? '',
        // verified: user.emailConfirmedAt != null,
        );
  }

  // Future<Map<String, dynamic>> _getUserProfile(String userId) async {
  //   final response = await supabase.from('profiles').select().eq('id', userId).single();
  //   return response;
  // }

  Exception _handleSupabaseError(dynamic error) {
    final errorMessage = error.toString();

    if (errorMessage.contains('network')) {
      return Exception('Network error: Unable to connect to Supabase');
    } else if (errorMessage.contains('Invalid login credentials')) {
      return Exception('Invalid email or password');
    } else if (errorMessage.contains('User already registered')) {
      return Exception('Email already in use');
    } else if (errorMessage.contains('error')) {
      return Exception('Supabase error: ${error.toString()}');
    } else {
      return Exception('An unexpected error occurred: ${error.toString()}');
    }
  }
}
