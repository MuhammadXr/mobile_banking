import 'package:flutter/material.dart';
import 'package:mobile_banking/presentation/ui/auth/sign_in/sign_in_page.dart';
import 'package:mobile_banking/presentation/ui/auth/sign_up/sign_up_page.dart';
import 'package:mobile_banking/presentation/ui/auth/verify/verify_screen.dart';
import 'package:mobile_banking/presentation/ui/home/home_page.dart';
import 'package:mobile_banking/presentation/ui/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: const HomePage(),
      routes:{
        SplashPage.id:(context) => const SplashPage().page,
        SignInPage.id:(context) => const SignInPage(),
        SignUpPage.id:(context) => const SignUpPage(),
        VerifyScreen.id:(context) => const VerifyScreen(),
        HomePage.id:(context) => const HomePage(),
      },
    );
  }
}
