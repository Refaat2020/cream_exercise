
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';


class AppTheme {
  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    brightness: Brightness.light,
    primaryColorDark: Colors.black,
    primaryColorLight: Colors.white,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: AppColors.latteColor,
        fontSize: 32.sp,
        fontFamily: "Alegreya",
      ),
      displayMedium: TextStyle(
        color: AppColors.night,
        fontSize: 17.sp,
        fontFamily: "Sf",
        fontWeight: FontWeight.w500,
      ),

      bodyLarge: TextStyle(
        color: AppColors.night,
        fontFamily: "Alata",
        fontWeight: FontWeight.w400,
        fontSize: 14.sp
      ),
      bodySmall: TextStyle(
        color: AppColors.latteColor,
        fontFamily: "Oswald",
        fontSize: 12.sp,
      ),

    ),
  );
}
