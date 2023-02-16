// To parse this JSON data, do
//
//     final signInResend = signInResendFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SignInResend signInResendFromJson(String str) => SignInResend.fromJson(json.decode(str));

String signInResendToJson(SignInResend data) => json.encode(data.toJson());

class SignInResend {
  SignInResend({
    required this.token,
  });

  String token;

  factory SignInResend.fromJson(Map<String, dynamic> json) => SignInResend(
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
