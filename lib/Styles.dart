import 'package:flutter/material.dart';
import 'package:whatsapp/UTILS/AppColors.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
//  static const Color tealGreenDark = Color.fromRGBO(7, 94, 84, 1);
//   static const Color tealGreenLight = Color.fromRGBO(18, 140, 126, 1);
//   static const Color lightGreenDark = Color.fromRGBO(37, 211, 102, 1);
//   static const Color teaGreen = Color.fromRGBO(220, 248, 198, 1);
//   static const Color blue = Color.fromRGBO(52, 183, 241, 1);
//   static const Color lightGray = Color.fromRGBO(238, 229, 221, 1);

        primaryColor:
            isDarkTheme ? AppColors.tealGreenDark : AppColors.tealGreenDark,
        backgroundColor: isDarkTheme ? Colors.black : Colors.white);
  }
}
