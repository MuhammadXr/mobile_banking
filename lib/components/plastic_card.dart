import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 168,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF3862F8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 42,
              height: 28,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 6,
                    top: 5,
                    child: Image.asset(
                      "assets/images/mastercard_icon.png",
                      width: 30,
                      height: 19,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 77,
            top: 21,
            child: Text(
              '**** 2236',
              style: GoogleFonts.getFont(
                'Poppins',
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 243,
            top: 21,
            child: Text(
              '02/24',
              style: GoogleFonts.getFont(
                'Poppins',
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 19,
            top: 78,
            child: Text(
              'Balance',
              style: GoogleFonts.getFont(
                'Poppins',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 19,
            top: 99,
            child: Text(
              '\$ 5 300.00',
              style: GoogleFonts.getFont(
                'Poppins',
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
