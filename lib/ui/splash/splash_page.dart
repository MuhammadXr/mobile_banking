import 'package:flutter/material.dart';
import 'package:mobile_banking/components/text_view.dart';
import 'package:mobile_banking/utils/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
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
  }
}
