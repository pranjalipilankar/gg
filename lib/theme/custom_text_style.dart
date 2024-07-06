import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.72),
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.72),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get bodySmallOpenSansBlack900 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansBluegray400 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallOpenSansBluegray700 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray700,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansCyan900 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.cyan900,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansDeeppurple900 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.deepPurple900,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansLightgreen900 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.lightGreen900,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansOnErrorContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.fSize,
      );
// Headline text style
  static get headlineLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
// Label text style
  static get labelLargeAmber400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber400,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumMontserratBlack900 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
// Montserrat text style
  static get montserratBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
// Title text style
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargeTeal800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal800,
      );
  static get titleMediumOpenSansOnPrimaryContainer =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumOpenSansOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );

  static get bodySmallOpenSansPrimary =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
// Display text style
  static get displaySmallPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
// Title text style
  static get titleLargeOpenSansPrimaryContainer =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 22.fSize,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );


  // Body text style
  static get bodyMediumInterGray600 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
// Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
// Label text style
  static get labelLargeAmber500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber500,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack900Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterGray800 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray800,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeWhiteA700Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumInterGray600 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumMontserratDeeporangeA400 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.deepOrangeA400,
        fontSize: 10.fSize,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
// Open text style
  static get openSansBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).openSans;
// Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterBluegray900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumInterBluegray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallDeeporangeA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA200,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );


}
