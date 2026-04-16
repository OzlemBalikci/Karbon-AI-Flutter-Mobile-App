import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class RegisterUseCase {
  RegisterUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<Exception, AppUser>> call({
    required String email,
    required String identityNumber,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required bool isKvkkApproved,
  }) =>
      _repository.register(
          email: email,
          identityNumber: identityNumber,
          firstName: firstName,
          lastName: lastName,
          birthDate: birthDate,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword,
          isKvkkApproved: isKvkkApproved);
}
