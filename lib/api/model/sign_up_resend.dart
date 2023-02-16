
import 'dart:convert';

SignUpResend signUpResendFromJson(String str) => SignUpResend.fromJson(json.decode(str));

String signUpResendToJson(SignUpResend data) => json.encode(data.toJson());

class SignUpResend {
  SignUpResend({
    required this.token,
  });

  String token;

  factory SignUpResend.fromJson(Map<String, dynamic> json) => SignUpResend(
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
