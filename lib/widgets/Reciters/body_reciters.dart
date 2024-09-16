import 'package:flutter/material.dart';
import 'reader_item_list_view.dart';
import 'search_reciters.dart';

class BodyReciters extends StatelessWidget {
  const BodyReciters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SearchReciters()), // Wrap non-slivers
          ReaderItemListView(), // Ensure this is a sliver
        ],
      ),
    );
  }
}
