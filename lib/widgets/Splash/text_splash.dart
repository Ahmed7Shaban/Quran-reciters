import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class TextSplash extends StatelessWidget {
  const TextSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.grey.shade50,
            border: Border.all(color: AppColors.studio, width: 1.2),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 30, top: 20, right: 20, left: 20),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              " قال تعالى: ﴿ الَّذِينَ يَسْتَمِعُونَ الْقَوْلَ فَيَتَّبِعُونَ أَحْسَنَهُ أُولَئِكَ الَّذِينَ هَدَاهُمُ اللَّهُ وَأُولَئِكَ هُمْ أُولُو الْأَلْبَابِ ﴾"
              " [الزمر: 18]",
              style: GoogleFonts.amiriQuran(
                  textStyle: TextStyle(
                      color: AppColors.ebony,
                      fontSize: 20,
                      fontWeight: FontWeight.w900)),
            ),
          ),
        ),
      ),
    );
  }
}
