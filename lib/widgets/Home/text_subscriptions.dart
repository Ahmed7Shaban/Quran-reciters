import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sounsds_quran/utils/colors.dart';

class scriptions extends StatelessWidget {
  const scriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(
        textAlign: TextAlign.end,
        "الإشتراك",
        style: GoogleFonts.cairo(
            textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: AppColors.ebony)),
      ),
    );
  }
}

class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.end,
      "من هنا يمكنك اختيار القارئ المفضل لك واالاستماع لجميع  التسجيلات الصوتية المتجدد",
      style: GoogleFonts.cairo(
          textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 19,
              color: AppColors.cocoaBrown)),
    );
  }
}
