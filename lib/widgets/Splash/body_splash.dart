import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../views/home_view.dart';
import '../custom_button.dart';
import 'app_bar_text.dart';
import 'logo_splash.dart';
import 'text_splash.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarText(),
          Center(child: LogoSplash()),
          TextSplash(),
          CustomElevatedButton(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
            text: 'الأستماع الى القرآن الكريم',
            onPressed: () {
              print('click');
              Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.topToBottom, child: HomeView()),
              );
            },
          )
        ],
      ),
    );
  }
}
