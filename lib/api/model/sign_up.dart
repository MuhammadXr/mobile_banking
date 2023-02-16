// To parse this JSON data, do
//
//     final signUp = signUpFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SignUp signUpFromJson(String str) => SignUp.fromJson(json.decode(str));

String signUpToJson(SignUp data) => json.encode(data.toJson());

class SignUp {
  SignUp({
    required this.phone,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.bornDate,
    required this.gender,
  });

  String phone;
  String password;
  String firstName;
  String lastName;
  String bornDate;
  String gender;

  factory SignUp.fromJson(Map<String, dynamic> json) => SignUp(
    phone: json["phone"],
    password: json["password"],
    firstName: json["first-name"],
    lastName: json["last-name"],
    bornDate: json["born-date"],
    gender: json["gender"],
  );

  Map<String, dynamic> toJson() => {
    "phone": phone,
    "password": password,
    "first-name": firstName,
    "last-name": lastName,
    "born-date": bornDate,
    "gender": gender,
  };
}
