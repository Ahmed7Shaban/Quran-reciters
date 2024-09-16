import 'package:flutter/material.dart';

import 'reader_item.dart';

class ReaderItemListView extends StatelessWidget {
  const ReaderItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 365,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (context, index) {
          return ReaderItem(
            index: index,
          );
        },
      ),
    );
  }
}
