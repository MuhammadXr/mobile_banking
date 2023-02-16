// To parse this JSON data, do
//
//     final signInVerify = signInVerifyFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SignInVerify signInVerifyFromJson(String str) => SignInVerify.fromJson(json.decode(str));

String signInVerifyToJson(SignInVerify data) => json.encode(data.toJson());

class SignInVerify {
  SignInVerify({
    required this.token,
    required this.code,
  });

  String token;
  String code;

  factory SignInVerify.fromJson(Map<String, dynamic> json) => SignInVerify(
    token: json["token"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "code": code,
  };
}
