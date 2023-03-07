import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_banking/core/status.dart';
import 'package:mobile_banking/presentation/ui/auth/sign_in/sign_in_page.dart';
import 'package:mobile_banking/presentation/ui/splash/bloc/splash_bloc.dart';
import 'package:mobile_banking/presentation/ui/splash/bloc/splash_event.dart';
import 'package:mobile_banking/presentation/ui/splash/bloc/splash_state.dart';
import 'package:mobile_banking/utils/colors.dart';

import '../../components/text_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const  String id = '/splash';
  Widget get page => BlocProvider(create: (context) => SplashBloc(),child: this,);


  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final bloc = SplashBloc();
  @override
  void initState() {
    bloc.add(SplashInitEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc,SplashState>(
      builder:(context, state) {
        if(state.status==Status.success){
          Navigator.pushNamed(context, SignInPage.id);
        }
        return const Scaffold(
          backgroundColor: primaryColor,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: TextView(
                  text: "GITA\nmobile banking",
                  fontWeight: FontWeight.w700,
                  textColor: Colors.white,
                  textSize: 40,
                  textAlign: TextAlign.center),
            ),
          ),
        );
      },
    );
  }
}
