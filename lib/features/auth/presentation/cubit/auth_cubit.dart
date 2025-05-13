import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/get_current_user.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/sign_in.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/sign_out.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/sign_up.dart';

import '../../../../core/failures/auth_failure.dart';
import '../../domain/entities/user_entity.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final SignInUseCase signInUseCase;
  final SignUpUseCase signUpUseCase;
  final GetCurrentUserUseCase getCurrentUserUseCase;
  final SignOutUseCase signOutUseCase;

  AuthCubit({
    required this.signInUseCase,
    required this.signUpUseCase,
    required this.getCurrentUserUseCase,
    required this.signOutUseCase,
  }) : super(const AuthState.initial());

  Future<void> checkAuthStatus() async {
    final userOption = await getCurrentUserUseCase.execute();
    emit(userOption.fold(
      () => const AuthState.unauthenticated(),
      (user) => AuthState.authenticated(user),
    ));
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(const AuthState.loading());
    final result = await signInUseCase.execute(email, password);
    emit(result.fold(
      (failure) => AuthState.failure(failure),
      (user) => AuthState.authenticated(user),
    ));
  }

  Future<void> signUpWithEmailAndPassword(
      String email, String password, String name) async {
    emit(const AuthState.loading());
    final result = await signUpUseCase.execute(email, password, name);
    emit(result.fold(
      (failure) => AuthState.failure(failure),
      (user) => AuthState.authenticated(user),
    ));
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());
    await signOutUseCase.execute();
    emit(const AuthState.unauthenticated());
  }
}
