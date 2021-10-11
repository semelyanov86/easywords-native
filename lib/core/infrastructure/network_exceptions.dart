class RestApiException implements Exception {
  final int? errorCode;

  RestApiException(this.errorCode);
}

class ValidationException implements Exception {
  final int errorCode = 422;

  final String message;

  ValidationException(this.message);
}
