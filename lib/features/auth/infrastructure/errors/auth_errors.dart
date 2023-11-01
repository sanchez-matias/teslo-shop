class WrongCredentials implements Exception {}

class InvalidTokens implements Exception {}

class ConnectionTimeout implements Exception {}

class CustomError implements Exception {
  final String message;
  final bool loggedRequired;
  //final int errorCode;

  CustomError(
    this.message,
    [this. loggedRequired = false]
    //this.errorCode,
  );
}
