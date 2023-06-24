import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class CustomThemeData {
  CustomThemeData._();

  static ThemeData lightViewTheme = ThemeData(
    fontFamily: 'Quantico',
    scaffoldBackgroundColor: CColors.darkColor,
    useMaterial3: true,
  );
}
