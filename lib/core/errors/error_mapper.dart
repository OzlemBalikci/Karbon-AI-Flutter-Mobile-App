import 'exceptions.dart';
import 'failures.dart';

Failure mapExceptionToFailure(Exception e) {
  if (e is BadRequestException) {
    return BadRequestFailure(e.message);
  } else if (e is UnauthorizedException) {
    return UnauthorizedFailure(e.message);
  } else if (e is ForbiddenException) {
    return ForbiddenFailure(e.message);
  } else if (e is NotFoundException) {
    return NotFoundFailure(e.message);
  } else if (e is ConflictException) {
    return ConflictFailure(e.message);
  } else if (e is ValidationException) {
    return ValidationFailure(e.message);
  } else if (e is ServerException) {
    return ServerFailure(e.message);
  } else {
    return NetworkFailure("İnternet bağlantısını kontrol et");
  }
}
