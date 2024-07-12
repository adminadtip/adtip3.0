import 'package:adtip_app/app/helpers/constant/asset_files.dart';
import 'package:adtip_app/app/helpers/constant/colors.dart';
import 'package:adtip_app/app/helpers/constant/strings.dart';
import 'package:flutter/material.dart';

class AdtipLists {
  static const List<String> onboardingTitleList = [
    AdtipStrings.onboardingTitle1,
    AdtipStrings.onboardingTitle2,
    AdtipStrings.onboardingTitle3,
    AdtipStrings.onboardingTitle4,
  ];

  static const List<Color> onboardingBgColorList = [
    AdtipColors.kAzureColor,
    AdtipColors.white,
    AdtipColors.white,
    AdtipColors.kLightGreenColor1,
  ];

  static const List<String> onboardingAssetList = [
    AdtipAssets.onboardingImage1,
    AdtipAssets.onboardingImage2,
    AdtipAssets.onboardingImage3,
    AdtipAssets.onboardingImage4,
  ];
}
