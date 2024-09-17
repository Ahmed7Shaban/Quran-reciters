import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../utils/colors.dart';
import '../../views/quran_view.dart';
import '../custom_button.dart';

// class ReaderItem extends StatelessWidget {
//   const ReaderItem({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         children: [
//           Container(
//             width: 360,
//             height: 365,
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage('assets/image/test.png')),
//                 border: Border.all(color: AppColors.studio, width: 1.2),
//                 borderRadius: BorderRadius.circular(20)),
//           ),
//           Positioned(
//             bottom: 0,
//             child: Container(
//               width: 360,
//               height: 100,
//               decoration: BoxDecoration(
//                   color: Color(0xffD9D9D9).withOpacity(0.6),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20),
//                     bottomRight: Radius.circular(20),
//                   )),
//               child: Center(
//                 child: FittedBox(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10),
//                     child: Text(
//                       textAlign: TextAlign.center,
//                       "مشاري بن راشد العفاسي",
//                       style: GoogleFonts.amiri(
//                           textStyle: TextStyle(
//                               color: AppColors.cocoaBrown,
//                               fontSize: 40,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class ReaderItem extends StatelessWidget {
  final int index; // Accept index as a parameter for animations

  const ReaderItem({super.key, required this.index});

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
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.leftToRight, child: QuranView()),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.heart,
                      color: Colors.red,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "مشاري بن راشد العفاسي",
                  style: GoogleFonts.amiri(
                      textStyle: TextStyle(
                          //           color: AppColors.cocoaBrown,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
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
        ));
  }
}
