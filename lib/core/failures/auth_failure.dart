import 'package:freezed_annotation/freezed_annotation.dart';


part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._(); // Base constructor for adding common methods
  
  // Authentication specific failures
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.weakPassword() = WeakPassword;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.tooManyRequests() = TooManyRequests;
  const factory AuthFailure.operationNotAllowed() = OperationNotAllowed;
  const factory AuthFailure.emailNotVerified() = EmailNotVerified;
  
  // General failures
  const factory AuthFailure.serverFailure() = AuthServerFailure;
  const factory AuthFailure.networkFailure() = NetworkFailure;
  const factory AuthFailure.unexpectedFailure() = UnexpectedFailure;
  
  // Message getter for user-friendly error messages
  String get message => when(
    invalidCredentials: () => "Invalid email or password.",
    emailAlreadyInUse: () => "Email is already in use.",
    weakPassword: () => "Password is too weak.",
    userNotFound: () => "No user found with this email.",
    userDisabled: () => "This user account has been disabled.",
    tooManyRequests: () => "Too many requests. Try again later.",
    operationNotAllowed: () => "Operation not allowed.",
    emailNotVerified: () => "Email not verified. Please check your inbox.",
    serverFailure: () => "Server error. Please try again later.",
    networkFailure: () => "Network error. Check your connection.",
    unexpectedFailure: () => "An unexpected error occurred.",
  );
}