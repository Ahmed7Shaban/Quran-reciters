import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sounsds_quran/utils/default_theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(DefaultTheme.lightTheme) {
    _loadTheme();
  }
  final ThemeData _lightTheme = DefaultTheme.lightTheme;
  final ThemeData _darkTheme = DefaultTheme.darkTheme;

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool('isDarkMode') ?? false;
    final isSystemMode = prefs.getBool('isSystemMode') ?? false;

    if (isSystemMode) {
      emit(ThemeData(platform: TargetPlatform.android));
    } else if (isDarkMode) {
      emit(_darkTheme);
    } else {
      emit(_lightTheme);
    }
  }

  Future<void> DarkTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', true);
    await prefs.setBool('isSystemMode', false);
    emit(_darkTheme);
  }

  Future<void> LightTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', false);
    await prefs.setBool('isSystemMode', false);
    emit(_lightTheme);
  }

  Future<void> switchToSystemTheme(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSystemMode', true);
    emit(ThemeData(platform: Theme.of(context).platform));
  }
}
