import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:sounsds_quran/utils/colors.dart';

class LogoSplash extends StatefulWidget {
  const LogoSplash({super.key});

  @override
  State<LogoSplash> createState() => _LogoSplashState();
}

class _LogoSplashState extends State<LogoSplash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/logoSplash.png')),
          border: Border.all(color: AppColors.valhalla, width: 1.2),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

//
//
//
//
//
