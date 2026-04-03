class AppException implements Exception {
  final String message;
  final int? statusCode;

  AppException(this.message, {this.statusCode});
}

class BadRequestException extends AppException {
  BadRequestException(super.message, {super.statusCode});
}

class UnauthorizedException extends AppException {
  UnauthorizedException(super.message, {super.statusCode});
}

class ForbiddenException extends AppException {
  ForbiddenException(super.message, {super.statusCode});
}

class NotFoundException extends AppException {
  NotFoundException(super.message, {super.statusCode});
}

class ConflictException extends AppException {
  ConflictException(super.message, {super.statusCode});
}

class ValidationException extends AppException {
  ValidationException(super.message, {super.statusCode});
}

class ServerException extends AppException {
  ServerException(super.message, {super.statusCode});
}

class NetworkException extends AppException {
  NetworkException(super.message);
}

class TooManyRequestsException extends AppException {
  TooManyRequestsException(super.message, {super.statusCode});
}
