import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 390,
              height: 357,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x4CB2B7C7),
                    spreadRadius: 0,
                    offset: Offset(0, 2),
                    blurRadius: 15,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 52,
            child: SizedBox(
              width: 211,
              child: Text(
                'Recent Transactions',
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: const Color(0xFF060F27),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            left: 353,
            top: 56,
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FLvQU0FP5gd0A98tcBwDz%2F1d6beaed19a364fd909b7a27f68b6241?alt=media&token=e39bed21-4868-429a-a4a4-54a27f989e18',
              width: 18,
              height: 18,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: 16,
            top: 101,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FLvQU0FP5gd0A98tcBwDz%2Fd2a02bdfe69db785b2d076671f69efb6?alt=media&token=d94b4e8a-d6d1-417b-a27c-90dd75e7af6b',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 100,
            child: Text(
              'Netflix',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF060F27),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 121,
            child: Text(
              'Entertainment',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF91949F),
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: 338,
            top: 100,
            child: Text(
              '- \$10',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF060F27),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 157,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FLvQU0FP5gd0A98tcBwDz%2Ff20680045fd0941c4c420813743eac72?alt=media&token=c1b732df-7700-44dc-ad78-c12d646a2f23',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 156,
            child: Text(
              'Maria Charles',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF060F27),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 177,
            child: Text(
              'Card transfer',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF91949F),
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: 331,
            top: 156,
            child: Text(
              '+\$100',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF060F27),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 213,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FLvQU0FP5gd0A98tcBwDz%2F07812e91e60da63bdaa133728762071a?alt=media&token=f448a2ac-9626-4f9e-8e8e-35a3437425a5',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 212,
            child: Text(
              'Walmart',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF060F27),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 233,
            child: Text(
              'Groceries and supermarkets',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF91949F),
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: 334,
            top: 212,
            child: Text(
              '- \$50',
              style: GoogleFonts.getFont(
                'Poppins',
                color: const Color(0xFF060F27),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
