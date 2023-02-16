import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 122,
                top: 113,
                child: Text(
                  'Welcome!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'DM Sans',
                    color: const Color(0xFF1C1939),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 180,
                child: Opacity(
                  opacity: 0.8,
                  child: SizedBox(
                    width: 321,
                    child: Text(
                      'Please provide following\ndetails for your new account',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        color: const Color(0xCC1C1939),
                        fontSize: 15,
                        height: 1.7,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 292,
                child: Container(
                  width: 340,
                  height: 444,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 49,
                        top: 419,
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
                                  text: 'Already have an account? - '),
                              TextSpan(
                                text: 'Sign In',
                                style: GoogleFonts.getFont(
                                  'DM Sans',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 340,
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 340,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: const Color(0x337165E3),
                                    border: Border.all(
                                      color: const Color(0xFF7165E3),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 29,
                                top: 13,
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      color: const Color(0xFF2C2948),
                                      fontSize: 15,
                                      height: 1.7,
                                    ),
                                    children: const [
                                      TextSpan(text: 'P'),
                                      TextSpan(text: 'hone Number')
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 110,
                        child: Container(
                          width: 340,
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 303,
                        top: 130,
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FLvQU0FP5gd0A98tcBwDz%2F66194c768c0838c65e11be118eef11c9?alt=media&token=412cef2f-20cb-4d12-b925-9602bfe20ff8',
                          width: 17,
                          height: 11,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: 303,
                        top: 130,
                        child: Container(
                          width: 17,
                          height: 11,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            color: Color(0xFFCDCDCD),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 123,
                        child: Text(
                          'Password',
                          style: GoogleFonts.getFont(
                            'DM Sans',
                            color: const Color(0xFF2C2948),
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 273,
                        child: Container(
                          width: 340,
                          height: 60,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 340,
                                  height: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF170745),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Sign in my Account',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'DM Sans',
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
