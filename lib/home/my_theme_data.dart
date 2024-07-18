import 'package:flutter/material.dart';
import 'app_colors.dart';

class MyThemeData {
  //light & dark mode
  static final lightMode = ThemeData(
    //canvasColor: AppColors.primaryLightColor,
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.blackColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: AppColors.blackColor,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //backgroundColor: AppColors.primaryLightColor,
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      showUnselectedLabels: true,
    ),
  );

  static final darkMode = ThemeData(
    //canvasColor: AppColors.primaryLightColor,
    primaryColor: AppColors.primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.yellowColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.yellowColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: AppColors.yellowColor,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: AppColors.yellowColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryLightColor,
      selectedItemColor: AppColors.yellowColor,
      unselectedItemColor: AppColors.whiteColor,
      showUnselectedLabels: true,
    ),
  );
}
