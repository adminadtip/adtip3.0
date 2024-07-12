import 'package:adtip_app/app/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlue400 => BoxDecoration(
        color: appTheme.blue400,
      );
  static BoxDecoration get fillBlue900 => BoxDecoration(
        color: appTheme.blue900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray500,
      );
  static BoxDecoration get fillBlueGrayC => BoxDecoration(
        color: appTheme.blueGray9004c,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red900,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.14, 0.29),
          end: Alignment(0.14, 1),
          colors: [
            appTheme.black900.withOpacity(0),
            appTheme.black900.withOpacity(0.58),
          ],
        ),
      );
  static BoxDecoration get gradientRedToBlueGrayB => BoxDecoration(
        border: Border.all(
          color: appTheme.red300,
          width: 1,
          strokeAlign: strokeAlignOutside,
        ),
        gradient: LinearGradient(
          begin: Alignment(-0.06, -0.14),
          end: Alignment(1.73, 1),
          colors: [
            appTheme.red300.withOpacity(0.9),
            appTheme.teal5000,
            appTheme.blueGray9002b,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        border: Border.all(
          color: appTheme.red300,
          width: 1,
          strokeAlign: strokeAlignOutside,
        ),
        gradient: LinearGradient(
          begin: Alignment(-0.06, -0.14),
          end: Alignment(0.93, 1.13),
          colors: [
            appTheme.red300.withOpacity(0.23),
            appTheme.red300.withOpacity(0.63),
            appTheme.red300.withOpacity(0.23),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.gray507f,
      );
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5003f,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        border: Border.all(
          color: appTheme.indigoA700,
          width: 1,
        ),
      );
  static BoxDecoration get outlineRed => BoxDecoration(
        border: Border.all(
          color: appTheme.red300,
          width: 1,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.gray507f,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50,
      );

  // Custom borders
  static BorderRadius get customBorderTL16 => BorderRadius.vertical(
        top: Radius.circular(16),
      );
  static BorderRadius get customBorderTL3 => BorderRadius.horizontal(
        left: Radius.circular(3),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
