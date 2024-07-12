import 'package:adtip_app/app/theme/theme_helper.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGreenA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodyLargeRed600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red600,
      );
  static get bodyLargeSFProTextWhiteA700 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16,
      );
  static get bodyLargeSFProTextff667084 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: Color(0XFF667084),
        fontSize: 16,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16,
      );
  static get bodyLargeff11ad33 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF11AD33),
      );
  static get bodyLargeffffffff => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 16,
      );
  static get bodyMediumInterWhiteA700 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumMerriweatherBlack900 =>
      theme.textTheme.bodyMedium!.merriweather.copyWith(
        color: appTheme.black900,
        fontSize: 14,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.54),
        fontSize: 14,
      );
  static get bodyMediumSFProTextBluegray90001 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.55),
        fontSize: 14,
      );
  static get bodyMediumSFProTextGray70001 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.gray70001,
        fontSize: 14,
      );
  static get bodyMediumSFProTextPrimary =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14,
      );
  static get bodyMediumSFProTextSecondaryContainer =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 14,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 10,
      );
  static get bodySmallInterGray50 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray50,
        fontSize: 12,
      );
  static get bodySmallRobotoGray700 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray700,
        fontSize: 10,
      );
  // Headline text style
  static get headlineLarge5124292e => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0X5124292E),
      );
  static get headlineLargeff24292e => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF24292E),
      );
  // Label text style
  static get labelLargeSFProTextWhiteA700 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextffffffff =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeSFProDisplay5124292e =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: Color(0X5124292E),
      );
  static get titleLargeSFProDisplayBluegray90001 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleLargeSFProDisplayff24292e =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: Color(0XFF24292E),
      );
  static get titleLargeSFProDisplayff24292eBold =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: Color(0XFF24292E),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumKantumruyPink900 =>
      theme.textTheme.titleMedium!.kantumruy.copyWith(
        color: appTheme.pink900,
      );
  static get titleMediumPoppinsff11ad33 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: Color(0XFF11AD33),
        fontSize: 17,
      );
  static get titleMediumPoppinsffe6332a =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: Color(0XFFE6332A),
        fontSize: 17,
      );
  static get titleMediumSFProTextff0f1728 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: Color(0XFF0F1728),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextffffffff =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.87),
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14,
      );
  static get titleSmallRobotoGray800 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray800,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProTextff667084 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: Color(0XFF667084),
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get merriweather {
    return copyWith(
      fontFamily: 'Merriweather',
    );
  }

  TextStyle get kantumruy {
    return copyWith(
      fontFamily: 'Kantumruy',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
