import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sounsds_quran/utils/colors.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50, top: 80),
      child: Text(
        "تلاوات القران",
        style: GoogleFonts.cairo(
            textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: AppColors.cocoaBrown)),
      ),
    );
  }
}
