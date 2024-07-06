import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "primary";
PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.black900,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.whiteA700;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.black900.withOpacity(0.25),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 36.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w800,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.7),
          fontSize: 11.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.65),
          fontSize: 14.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: appTheme.black900.withOpacity(0.5),
          fontSize: 8.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF006A60),
    errorContainer: Color(0XFFFDBFC0),
    onPrimary: Color(0XFF3C3048),
    onErrorContainer: Color(0XFF71043B),
    onPrimaryContainer: Color(0XC6FFFFFF),

  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber200 => Color(0XFFF6DE86);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue200 => Color(0XFF9ED7F2);
// BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray600 => Color(0XFF456997);
// Cyan
  Color get cyan500 => Color(0XFF0CC3BE);
// DeepOrange
  Color get deepOrange400 => Color(0XFFFD7658);
// Gray
  Color get gray300 => Color(0XFFDFDEEE);
  Color get gray600 => Color(0XFF848181);
// Indigo
  Color get indigo400 => Color(0XFF6571D3);
// Lime
  Color get lime100 => Color(0XFFF6EAC0);
// Pink
  Color get pink400 => Color(0XFFE74388);
  Color get pinkA100 => Color(0XFFFF73B7);
// Red
  Color get redA200 => Color(0XFFFE4E50);
  // Amber
  Color get amber400 => Color(0XFFEBD117);
// Black
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray700 => Color(0XFF505051);
// Cyan
  Color get cyan900 => Color(0XFF004C79);
// DeepOrange
  Color get deepOrange100 => Color(0XFFFFC0C2);
  Color get deepOrange200 => Color(0XFFFFA5A7);
// DeepPurple
  Color get deepPurple900 => Color(0XFF350693);
  Color get deepPurpleA200 => Color(0XFF965EFF);
// Gray
  Color get gray100 => Color(0XFFF5F5FA);
  Color get gray400 => Color(0XFFC2C2C2);
  Color get gray500 => Color(0XFF99989B);
  Color get gray60049 => Color(0X49777777);
// Grayf
  Color get gray3007f => Color(0X7FE1E1E1);
  Color get gray7007f => Color(0X7F5F5353);
// Green
  Color get green400 => Color(0XFF4ECB71);
  Color get greenA700 => Color(0XFF0FA958);
// LightBlue
  Color get lightBlueA200 => Color(0XFF40B7FE);
// LightGreen
  Color get lightGreen900 => Color(0XFF386709);
  Color get lightGreenA400 => Color(0XFF80FB06);
  Color get lightGreenA40001 => Color(0XFF7FFF00);
// Pink
  Color get pinkA200 => Color(0XFFFE4091);
// PinkAf
  Color get pinkA1007f => Color(0X7FFE8CA9);
// Red
  Color get red400 => Color(0XFFEA5A47);
// Teal
  Color get teal800 => Color(0XFF006A60);

  // Amber
  Color get amber300 => Color(0XFFFCDA63);
  Color get amber500 => Color(0XFFF1BF10);
// Black
// Blue
  Color get blue300 => Color(0XFF6EC0F1);
// BlueGray
  Color get blueGray50 => Color(0XFFE9EDF0);
  Color get blueGray5001 => Color(0XFFE9ECF1);
  Color get blueGray900 => Color(0XFF2E2E30);
// DeepOrange
  Color get deepOrangeA200 => Color(0XFFE36734);
  Color get deepOrangeA400 => Color(0XFFFF3D00);
// DeepOrangeE
  Color get deepOrange100E5 => Color(0XE5F8D2B5);
  Color get deepOrange800E5 => Color(0XE5DC4205);
// Gray
  Color get gray40087 => Color(0X87B1B1B1);
  Color get gray800 => Color(0XFF3F3F3F);
// Grayf
  Color get gray6003f => Color(0X3F846F6F);
// Indigo
  Color get indigoA400 => Color(0XFF3A5AFE);
  Color get indigoA700 => Color(0XFF344BFD);
// LightBlue
  Color get lightBlueA400 => Color(0XFF00C1FF);
// Pink
  Color get pink900 => Color(0XFF7D3436);
// Red
  Color get redA700 => Color(0XFFFC0000);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
