import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sounsds_quran/utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double elevation;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.revolver,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.padding =
        const EdgeInsets.symmetric(horizontal: 120.0, vertical: 27.0),
    this.elevation = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(63),
        ),
      ),
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
