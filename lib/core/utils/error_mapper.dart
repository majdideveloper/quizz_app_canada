import 'package:quizz_app_canada/core/failures/auth_failure.dart';



class ErrorMapper {
  static AuthFailure mapPocketBaseAuthError(dynamic error) {
    final errorMsg = error.toString().toLowerCase();
    
    if (errorMsg.contains('invalid email or password') || 
        errorMsg.contains('invalid credentials')) {
      return const AuthFailure.invalidCredentials();
    } else if (errorMsg.contains('email already in use') || 
               errorMsg.contains('already exists')) {
      return const AuthFailure.emailAlreadyInUse();
    } else if (errorMsg.contains('weak password')) {
      return const AuthFailure.weakPassword();
    } else if (errorMsg.contains('user not found') || 
               errorMsg.contains('no user found')) {
      return const AuthFailure.userNotFound();
    } else if (errorMsg.contains('disabled') || 
               errorMsg.contains('blocked')) {
      return const AuthFailure.userDisabled();
    } else if (errorMsg.contains('too many requests') || 
               errorMsg.contains('rate limit')) {
      return const AuthFailure.tooManyRequests();
    } else if (errorMsg.contains('not allowed') || 
               errorMsg.contains('permission')) {
      return const AuthFailure.operationNotAllowed();
    } else if (errorMsg.contains('not verified') || 
               errorMsg.contains('verify')) {
      return const AuthFailure.emailNotVerified();
    } else if (errorMsg.contains('network') || 
               errorMsg.contains('connection') || 
               errorMsg.contains('offline')) {
      return const AuthFailure.networkFailure();
    } else {
      return const AuthFailure.serverFailure();
    }
  }
}