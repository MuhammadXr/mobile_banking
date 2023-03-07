import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_banking/presentation/ui/splash/bloc/splash_event.dart';
import 'package:mobile_banking/presentation/ui/splash/bloc/splash_state.dart';
import '../../../../core/status.dart';

class SplashBloc extends Bloc<SplashEvent,SplashState>{
  SplashBloc():super(const SplashState(status: Status.initial, progress: 0)){
on<SplashInitEvent>((event, emit)async{
  await Future.delayed(const Duration(seconds: 2));
  emit(const SplashState(status: Status.success, progress: 100));
});
  }

}