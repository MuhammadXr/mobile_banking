// To parse this JSON data, do
//
//     final signUp = signUpFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SignUp signUpFromJson(String str) => SignUp.fromJson(json.decode(str));

String signUpToJson(SignUp data) => json.encode(data.toJson());

class SignUp {
  SignUp({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
  });

  String firstName;
  String lastName;
  String phoneNumber;
  String password;

  factory SignUp.fromJson(Map<String, dynamic> json) => SignUp(
    firstName: json["first_name"],
    lastName: json["last_name"],
    phoneNumber: json["phone_number"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "first_name": firstName,
    "last_name": lastName,
    "phone_number": phoneNumber,
    "password": password,
  };
}
