import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/Setting/theme/change_theme.dart';
import 'views/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          )
        ],
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (BuildContext context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: state,
              home: SplashView(),
            );
          },
        ));
  }
}
