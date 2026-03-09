import 'package:equatable/equatable.dart';

class AppUser extends Equatable {
  final String id;
  final String email;
  final String name;
  final String surname;
  final String tcNo;
  final String phoneNumber;
  final String birthDate;
  final String password;

  const AppUser({
    required this.id,
    required this.email,
    required this.name,
    required this.surname,
    required this.tcNo,
    required this.phoneNumber,
    required this.birthDate,
    required this.password,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'surname': surname,
      'tcNo': tcNo,
      'phoneNumber': phoneNumber,
      'birthDate': birthDate,
      'password': password,
    };
  }

  factory AppUser.fromJson(Map<String, dynamic> jsonUser) {
    return AppUser(
      id: jsonUser['id'],
      email: jsonUser['email'],
      name: jsonUser['name'],
      surname: jsonUser['surname'],
      tcNo: jsonUser['tcNo'],
      phoneNumber: jsonUser['phoneNumber'],
      birthDate: jsonUser['birthDate'],
      password: jsonUser['password'],
    );
  }
  @override
  List<Object?> get props =>
      [id, email, name, surname, tcNo, phoneNumber, birthDate, password];
}
