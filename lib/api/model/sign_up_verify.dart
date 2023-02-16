// To parse this JSON data, do
//
//     final signUpVerify = signUpVerifyFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SignUpVerify signUpVerifyFromJson(String str) => SignUpVerify.fromJson(json.decode(str));

String signUpVerifyToJson(SignUpVerify data) => json.encode(data.toJson());

class SignUpVerify {
  SignUpVerify({
    required this.token,
    required this.code,
  });

  String token;
  String code;

  factory SignUpVerify.fromJson(Map<String, dynamic> json) => SignUpVerify(
    token: json["token"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "code": code,
  };
}
