abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure() : super("__Server error. Please try again later.");
}

class CacheFailure extends Failure {
  CacheFailure() : super("__Failed to load data. Try refreshing.");
}

class NoConnectionFailure extends Failure {
  NoConnectionFailure()
    : super("__No internet connection. Check your network.");
}

class SomeThingWrongFailure extends Failure {
  SomeThingWrongFailure()
    : super("__Something went wrong. Please try again later.");
}
