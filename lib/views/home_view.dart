import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sounsds_quran/utils/colors.dart';

import '../widgets/Favorite/body_favorite.dart';
import '../widgets/Reciters/body_reciters.dart';
import '../widgets/Setting/body_setting.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

int _selectedIndex = 0;
List<Widget> views = [
  BodyReciters(),
  BodyFavorite(),
  BodySetting(),
];

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

class _HomeViewState extends State<HomeView> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
          key: _bottomNavigationKey,
          color: AppColors.cocoaBrown,
          backgroundColor: Colors.white,
          items: <Widget>[
            Icon(
              FontAwesomeIcons.quran,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.solidHeart,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.gear,
              color: Colors.white,
            ),
          ],
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "تلاوات القران",
          ),
        ),
        body: views[_selectedIndex],
      ),
    );
  }
}
