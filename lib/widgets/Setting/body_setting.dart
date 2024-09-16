import 'package:flutter/material.dart';

import 'choose_language.dart';
import 'choose_theme.dart';

class BodySetting extends StatelessWidget {
  const BodySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ChooseLanguage(),
          SizedBox(
            height: 30,
          ),
          ChooseTheme(),
        ],
      ),
    );
  }
}
