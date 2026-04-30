import 'package:karbon/features/auth/data/dtos/forgotpassword_dto.dart';
import 'package:karbon/features/auth/data/dtos/login_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_dto.dart';
import 'package:karbon/features/auth/data/dtos/resetpassword_dto.dart';
import 'package:karbon/features/auth/data/dtos/user_model.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

/// Auth DTO ↔ domain eşlemesi; iş kuralı içermez.
class AuthMapper {
  AuthMapper._();

  static AppUser toAppUser(UserDto dto) => AppUser(
        id: dto.id,
        email: dto.email,
        name: dto.name,
        surname: dto.surname,
        identityNumber: dto.identityNumber,
        phoneNumber: dto.phoneNumber,
        birthDate: dto.birthDate,
        totalCarbonScore: dto.totalCarbonScore,
        totalPoints: dto.totalPoints,
        lastCarbonScore: dto.lastCarbonScore,
        donatedTreeCount: dto.donatedTreeCount,
        lastLoginDate: dto.lastLoginDate,
        isKvkkApproved: dto.isKvkkApproved,
        emailConfirmed: dto.emailConfirmed,
      );

  static LoginRequestDto loginRequest({
    required String emailOrIdentityNumber,
    required String password,
  }) =>
      LoginRequestDto(
        emailorIdentityNumber: emailOrIdentityNumber,
        password: password,
      );

  static RegisterDto registerRequest({
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
      RegisterDto(
        email: email,
        identityNumber: identityNumber,
        firstName: firstName,
        lastName: lastName,
        birthDate: birthDate,
        phoneNumber: phoneNumber,
        password: password,
        confirmPassword: confirmPassword,
        isKvkkApproved: isKvkkApproved,
      );

  static ForgotPasswordDto forgotPasswordRequest({
    required String phoneNumber,
    String? deviceToken,
  }) =>
      ForgotPasswordDto(phoneNumber: phoneNumber, deviceToken: deviceToken);

  static ResetPasswordDto resetPasswordRequest({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) =>
      ResetPasswordDto(
        phoneNumber: phoneNumber,
        resetCode: resetCode,
        newPassword: newPassword,
        confirmNewPassword: confirmNewPassword,
      );
}
