import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  var timer = 0;

  @override
  void initState() {
    countTime(60);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(
            transformAlignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Verify Account!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'DM Sans',
                      color: const Color(0xFF1C1939),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: SizedBox(
                    width: 321,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          color: const Color(0xCC1C1939),
                          fontSize: 15,
                          height: 1.7,
                        ),
                        children: [
                          const TextSpan(
                              text:
                                  'Enter 4-digit Code code we have sent to at '),
                          TextSpan(
                            text: '+234 81 137 335 82.',
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              color: const Color(0xFF7165E3),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: OTPTextField(
                    length: 6,
                    width: 350,
                    fieldWidth: 40,
                    style: const TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You can resend code after  ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              color: const Color(0xCC1C1939),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            timer.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              color: const Color(0xCC4933FF),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '  seconds',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              color: const Color(0xCC1C1939),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Resend Code',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          color: const Color(0xFF7165E3),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 340,
                  height: 60,
                  margin: const EdgeInsets.all(20),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: const Color(0xFF170745),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Proceed',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.getFont(
                      'DM Sans',
                      color: const Color(0xCC1C1939),
                      fontSize: 13,
                      height: 1.9,
                    ),
                    children: [
                      const TextSpan(
                          text: 'by clicking start, you agree to our '),
                      TextSpan(
                        text: 'Privacy Policy \n',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          color: const Color(0xFF7165E3),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const TextSpan(text: 'our '),
                      TextSpan(
                        text: 'Teams and Conditions',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          color: const Color(0xFF7165E3),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void countTime(int countUntil) async {
    timer = 60;
    while (timer >= 0) {
      await Future.delayed(const Duration(seconds: 1));
      timer--;
      setState(() {});
    }
  }
}
