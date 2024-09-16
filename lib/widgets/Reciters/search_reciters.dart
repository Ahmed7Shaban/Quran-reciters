import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class SearchReciters extends StatelessWidget {
  const SearchReciters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: AppColors.studio, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                //      labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
                prefixIcon: Icon(Icons.search),
              ),
              style: TextStyle(color: Colors.white, fontSize: 18),
              onChanged: (query) {},
            ),
          ),
        ),
      ),
    );
  }
}
