import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sounsds_quran/widgets/custom_button.dart';

import '../../utils/colors.dart';

class ScriptionItem extends StatelessWidget {
  const ScriptionItem({super.key, required this.index});
  final int index; // Accept index as a parameter for animations

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 500), // Animation duration
      tween: Tween<double>(
          begin: 0, end: 1), // Define the tween for scale and opacity
      curve: Curves.easeInOut,
      builder: (context, double value, child) {
        return Transform.scale(
          scale: value, // Scale animation
          child: Opacity(
            opacity: value, // Fade animation
            child: child,
          ),
        );
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "مشاري بن راشد العفاسي",
                  style: GoogleFonts.amiri(
                      textStyle: TextStyle(
                          color: AppColors.cocoaBrown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 1,
                ),
                CustomElevatedButton(
                  text: "اشتراك",
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 100,
              width: 103,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/test.png')),
                  border: Border.all(color: AppColors.valhalla, width: 1.2),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
