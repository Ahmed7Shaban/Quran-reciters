import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sounsds_quran/utils/colors.dart';

class ChooseTheme extends StatefulWidget {
  @override
  _ChooseThemeState createState() => _ChooseThemeState();
}

class _ChooseThemeState extends State<ChooseTheme> {
  String _selectedChoice = "Light";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Theme Mode: $_selectedChoice",
            style: GoogleFonts.acme(
                textStyle: TextStyle(
              color: AppColors.revolver,
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
                  'System',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                    color: AppColors.studio,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
                ),
                selected: _selectedChoice == 'System',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'System' : 'Light';
                  });
                },
              ),
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
                  setState(() {
                    _selectedChoice = selected ? 'Light' : 'Light';
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
