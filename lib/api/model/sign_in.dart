// To parse this JSON data, do
//
//     final signIn = signInFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SignIn signInFromJson(String str) => SignIn.fromJson(json.decode(str));

String signInToJson(SignIn data) => json.encode(data.toJson());

class SignIn {
  SignIn({
    required this.phone,
    required this.password,
  });

  String phone;
  String password;

  factory SignIn.fromJson(Map<String, dynamic> json) => SignIn(
    phone: json["phone"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "phone": phone,
    "password": password,
  };
}
