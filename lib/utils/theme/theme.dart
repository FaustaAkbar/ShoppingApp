import 'package:ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: FTextTheme.lightTextTheme,
      elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: FOoutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: FTextFormFieldTheme.lightInputDecorationTheme,
      chipTheme: FChipTheme.lightChipTheme,
      appBarTheme: FAppBarTheme.lightAppBarTheme,
      checkboxTheme: FcheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: FBottomSheetTheme.lightButtonSheetTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: FTextTheme.darkTextTheme,
      elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: FOoutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: FTextFormFieldTheme.darkInputDecorationTheme,
      chipTheme: FChipTheme.darkChipTheme,
      appBarTheme: FAppBarTheme.darkAppBarTheme,
      checkboxTheme: FcheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: FBottomSheetTheme.darkButtonSheetTheme);
}
