import 'package:flutter/material.dart';

import '../widgets/Splash/body_splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: const BodySplash(),
      ),
    );
  }
}
