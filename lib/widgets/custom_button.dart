import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sounsds_quran/utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.rubik(
            textStyle: TextStyle(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        )),
      ),
    );
  }
}
