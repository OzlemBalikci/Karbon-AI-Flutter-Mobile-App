class RegisterDto {
  const RegisterDto({
    required this.email,
    required this.identityNumber,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
    required this.isKvkkApproved,
  });

  final String email;
  final String identityNumber;
  final String firstName;
  final String lastName;
  final String birthDate;
  final String phoneNumber;
  final String password;
  final String confirmPassword;
  final bool isKvkkApproved;

  Map<String, dynamic> toJson() => {
        'email': email,
        'identityNumber': identityNumber,
        'firstName': firstName,
        'lastName': lastName,
        'birthDate': birthDate,
        'phoneNumber': phoneNumber,
        'password': password,
        'confirmPassword': confirmPassword,
        'isKvkkApproved': isKvkkApproved,
      };
}

typedef RegisterRequestModel = RegisterDto;
