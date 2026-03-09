import 'package:karbon/features/auth/domain/entities/app_user.dart';

class UserModel {
  final String id;
  final String email;
  final String name;
  final String surname;
  final String tcNo;
  final String phoneNumber;
  final String birthDate;
  final String password;

  const UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.surname,
    required this.tcNo,
    required this.phoneNumber,
    required this.birthDate,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      surname: json['surname'] as String? ?? '',
      tcNo: json['tcNo'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      birthDate: json['birthDate'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'surname': surname,
        'tcNo': tcNo,
        'phoneNumber': phoneNumber,
        'birthDate': birthDate,
        'password': password,
      };

  AppUser toEntity() => AppUser(
        id: id,
        email: email,
        name: name,
        surname: surname,
        tcNo: tcNo,
        phoneNumber: phoneNumber,
        birthDate: birthDate,
        password: password,
      );
}
