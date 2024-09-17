import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../cubit/Setting/theme/change_theme.dart';
import '../../utils/colors.dart';

class ChooseTheme extends StatefulWidget {
  @override
  _ChooseThemeState createState() => _ChooseThemeState();
}

class _ChooseThemeState extends State<ChooseTheme> {
  String _selectedChoice = "Light";

  @override
  void initState() {
    super.initState();
    _loadSelectedTheme();
  }

  Future<void> _loadSelectedTheme() async {
  final prefs = await SharedPreferences.getInstance();
  final isDarkMode = prefs.getBool('isDarkMode') ?? false;

    setState(() {
      if (isDarkMode) {
        _selectedChoice = 'Dark';
      } else {
        _selectedChoice = 'Light';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ThemeCubit>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Theme Mode: $_selectedChoice",
            style: GoogleFonts.acme(
                textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 8.0,
            children: [
              ChoiceChip(
                label: Text(
                  'Dark',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                    color: AppColors.studio,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
                ),
                selected: _selectedChoice == 'Dark',
                onSelected: (bool selected) {
                  if (selected) {
                    cubit.DarkTheme();
                  } else {
                    cubit.LightTheme();
                  }
                  setState(() {
                    _selectedChoice = selected ? 'Dark' : 'Light';
                  });
                },
              ),
              ChoiceChip(
                label: Text(
                  'Light',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                    color: AppColors.studio,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
                ),
                selected: _selectedChoice == 'Light',
                onSelected: (bool selected) {
                  if (selected) {
                    cubit.LightTheme();
                  }
                  setState(() {
                    _selectedChoice = selected ? 'Light' : _selectedChoice;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
