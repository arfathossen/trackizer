import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:trackizer_app/page/welcome_screen/welcome_screen.dart';
import 'package:trackizer_app/theme/app_themes.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

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
