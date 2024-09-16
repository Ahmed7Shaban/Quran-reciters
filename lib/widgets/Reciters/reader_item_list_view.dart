import 'package:flutter/material.dart';
import 'reader_item.dart';

class ReaderItemListView extends StatelessWidget {
  const ReaderItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ReaderItem(
            index: index,
          );
        },
        childCount: 30,
      ),
    );
  }
}
