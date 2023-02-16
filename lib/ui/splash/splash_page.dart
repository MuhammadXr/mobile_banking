
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_banking/ui/auth/sign_up/sign_up_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3),
            () => { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage(),))});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color:  const Color(0xFF170745),
          alignment: Alignment.center,
          child: const Text(
            textAlign: TextAlign.center,
            "Welcome\nMax_bank",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48),
          ),
        ),
      );
  }
}
