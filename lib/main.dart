import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/main_page.dart';
import 'utils/global.colors.dart';

void main() {
  runApp(MaterialApp(
      home: AnimatedSplashScreen(
    splash: Image.asset('assets/images/gasto_logo.jpeg'),
    nextScreen: const MyApp(),
    backgroundColor: GlobalColors.mainTheme,
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    return MaterialApp(
      title: 'gasto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: GlobalColors.mainTheme),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
      },
    );
  }
}
