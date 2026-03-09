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
    required String tcNo,
    required String name,
    required String surname,
    required String birthDate,
    required String password,
    required String phoneNumber,
  }) =>
      _repository.register(
        email: email,
        tcNo: tcNo,
        name: name,
        surname: surname,
        birthDate: birthDate,
        password: password,
        phoneNumber: phoneNumber,
      );
}
