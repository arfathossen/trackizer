import 'package:flutter/material.dart';
import 'package:trackizer_app/page/welcome_screen/welcome_screen.dart';
import 'package:trackizer_app/theme/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.darkTheme,
      home: const WelcomeScreen(),
    );
  }
}
