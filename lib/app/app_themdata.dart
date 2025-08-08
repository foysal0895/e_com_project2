
import 'package:e_com_project/app/app_colors.dart';
import 'package:flutter/material.dart';

  class AppThemeData {
 static ThemeData get liggtThemData{
    return ThemeData(

      colorSchemeSeed: AppColors.themeColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.themeColor
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 3,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        )
      ),
      inputDecorationTheme: InputDecorationTheme(

        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.themeColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.themeColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.themeColor,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      )
    );

  }
}