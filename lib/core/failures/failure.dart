import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._(); // Base constructor for adding common methods
  
  // General failures
  const factory Failure.serverFailure([String? message]) = ServerFailure;
  const factory Failure.cacheFailure([String? message]) = CacheFailure;
  const factory Failure.noConnectionFailure([String? message]) = NoConnectionFailure;
  const factory Failure.somethingWrongFailure([String? message]) = SomethingWrongFailure;
  
  // Get the default message for each failure type
  String get defaultMessage => when(
    serverFailure: (message) => message ?? "__Server error. Please try again later.",
    cacheFailure: (message) => message ?? "__Failed to load data. Try refreshing.",
    noConnectionFailure: (message) => message ?? "__No internet connection. Check your network.",
    somethingWrongFailure: (message) => message ?? "__Something went wrong. Please try again later.",
  );
}