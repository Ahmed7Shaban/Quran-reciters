import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'reader_item_list_view.dart';
import 'scriptions_list_view.dart';
import 'text_subscriptions.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ReaderItemListView()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                  color: AppColors.ebony,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: scriptions(),
          ),
          SliverToBoxAdapter(
            child: Subscriptions(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ScriptionsListView(); // Build your list here
              },
              childCount: 1, // Adjust according to your needs
            ),
          ),
        ],
      ),
    );
  }
}
