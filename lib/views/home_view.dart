import 'package:flutter/material.dart';

import '../widgets/Home/body_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BodyHome(),
      ),
    );
  }
}
