import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
          backgroundColor: AppColors.cocoaBrown,
          items: <Widget>[
            Icon(
              FontAwesomeIcons.quran,
              size: 29,
              color: AppColors.cocoaBrown,
            ),
            Icon(
              FontAwesomeIcons.solidHeart,
              size: 30,
              color: AppColors.cocoaBrown,
            ),
            Icon(
              FontAwesomeIcons.gear,
              size: 30,
              color: AppColors.cocoaBrown,
            ),
          ],
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 130,
          title: Text(
            "تلاوات القران",
            style: GoogleFonts.cairo(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white)),
          ),
          backgroundColor: AppColors.cocoaBrown,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
        ),
        body: views[_selectedIndex],
      ),
    );
  }
}
