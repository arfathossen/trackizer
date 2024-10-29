import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class AppThemes {
  static ThemeData get darkTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Constants.primaryColor,
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.interTextTheme(),
        scaffoldBackgroundColor: const Color(0xFF1c1c23),
        cardColor: Colors.grey,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Constants.primaryColor,
            ),
          ),
          fillColor: Constants.bgColors,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF1c1c23),
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Color(0xFF1c1c23),
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Color(0xFF1c1c23),
          ),
          iconTheme: IconThemeData(color: Constants.primaryColor),
          centerTitle: true,
          surfaceTintColor: Colors.transparent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white24,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Constants.primaryColor,
            side: BorderSide(color: Constants.primaryColor),
            padding: const EdgeInsets.all(16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          dividerColor: Colors.transparent,
          labelPadding: const EdgeInsets.symmetric(
              // horizontal: AppDefaults.padding,
              // vertical: AppDefaults.padding / 1.15,
              ),
          labelColor: Constants.secondaryColor,
          unselectedLabelColor: const Color(0xFFA5A7B9),
          indicatorSize: TabBarIndicatorSize.label,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Constants.primaryColor),
        ),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: Colors.black12,
        ),
      );
}
