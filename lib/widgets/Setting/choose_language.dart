import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sounsds_quran/utils/colors.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String _selectedChoice = "Arabic";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Language: $_selectedChoice",
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
                  'English',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                    color: AppColors.studio,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
                ),
                selected: _selectedChoice == 'English',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'English' : 'Arabic';
                  });
                },
              ),
              ChoiceChip(
                label: Text(
                  'Italy',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                    color: AppColors.studio,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
                ),
                selected: _selectedChoice == 'Italy',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Italy' : 'Arabic';
                  });
                },
              ),
              ChoiceChip(
                label: Text(
                  'Arabic',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                    color: AppColors.studio,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
                ),
                selected: _selectedChoice == 'Arabic',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Arabic' : 'Arabic';
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
