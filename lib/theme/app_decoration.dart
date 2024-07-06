import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber200,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue200,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray600,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA100,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  // Fill decorations
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
// Gradient decorations
  static BoxDecoration get gradientDeepOrangeToPinkA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.61),
          end: Alignment(1, 0.57),
          colors: [appTheme.deepOrange200, appTheme.pinkA100],
        ),
      );
  static BoxDecoration get gradientErrorContainerToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.47, 0.16),
          end: Alignment(-0.06, 0.83),
          colors: [theme.colorScheme.errorContainer, theme.colorScheme.primary],
        ),
      );
  static BoxDecoration get gradientGrayFToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.gray7007f,
            appTheme.gray3007f,
            theme.colorScheme.onPrimary
          ],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -10,
              -10,
            ),
          )
        ],
      );

  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Gradient decorations
  static BoxDecoration get gradientBlueToLightBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.07, 0),
          end: Alignment(0.96, 0.93),
          colors: [appTheme.blue300, appTheme.lightBlueA200],
        ),
      );
  static BoxDecoration get gradientDeepOrangeEToDeepOrangeE => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.61),
          end: Alignment(1.04, 0.34),
          colors: [appTheme.deepOrange100E5, appTheme.deepOrange800E5],
        ),
      );
  static BoxDecoration get gradientDeepOrangeToPinkA100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.61),
          end: Alignment(1, 0.57),
          colors: [appTheme.deepOrange200, appTheme.pinkA100],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
}

class BorderRadiusStyle {
    // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );
// Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder54 => BorderRadius.circular(
        54.h,
      );
  // Custom borders
  static BorderRadius get customBorderTL15 => BorderRadius.only(
        topLeft: Radius.circular(15.h),
        bottomRight: Radius.circular(15.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
