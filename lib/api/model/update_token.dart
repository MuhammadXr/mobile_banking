// To parse this JSON data, do
//
//     final updateToken = updateTokenFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UpdateToken updateTokenFromJson(String str) => UpdateToken.fromJson(json.decode(str));

String updateTokenToJson(UpdateToken data) => json.encode(data.toJson());

class UpdateToken {
  UpdateToken({
    required this.refreshToken,
  });

  String refreshToken;

  factory UpdateToken.fromJson(Map<String, dynamic> json) => UpdateToken(
    refreshToken: json["refresh-token"],
  );

  Map<String, dynamic> toJson() => {
    "refresh-token": refreshToken,
  };
}
