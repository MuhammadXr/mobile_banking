
import 'package:flutter/cupertino.dart';

import '../../../../core/status.dart';

@immutable
class SplashState{
  final Status status;
  final int progress;

  const SplashState({required this.status,required this.progress});

  SplashState copyWith({
    Status? status,
    int? progress
}){
    return SplashState(status: status??this.status, progress: progress??this.progress);
  }
}