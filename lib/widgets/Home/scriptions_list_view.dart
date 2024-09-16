import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'scription_item.dart';

class ScriptionsListView extends StatelessWidget {
  const ScriptionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        shrinkWrap:
            true, // Important to prevent the list from taking all available space
        physics:
            const NeverScrollableScrollPhysics(), // Disables inner scrolling (since the parent scrolls)
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ScriptionItem(index: index);
        },
      ),
    );
  }
}
