import 'package:adtip_app/app/modules/authentication/create_account_page.dart';
import 'package:adtip_app/app/modules/authentication/enter_profession_status.dart';
import 'package:adtip_app/app/modules/authentication/phone_login/bindings/phone_login_bindings.dart';
import 'package:adtip_app/app/modules/authentication/phone_login/page/phone_login_page.dart';

import 'package:adtip_app/app/modules/dashBoard/bindings/dash_board_bindings.dart';
import 'package:adtip_app/app/modules/dashBoard/page/dash_board_page.dart';
import 'package:adtip_app/app/modules/location/bindings/current_location_bindings.dart';
import 'package:adtip_app/app/modules/authentication/current_location_page.dart';
import 'package:adtip_app/app/modules/myCompanyPage/page/my_company_page.dart';
import 'package:adtip_app/app/modules/onboarding/onboarding_screen.dart';
import 'package:adtip_app/app/modules/video_detail_page/bindings/video_detail_page_bindings.dart';
import 'package:adtip_app/app/modules/video_detail_page/page/video_detail_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ON_BOARDING;

  static final routes = [
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnboardingScreen(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => const CreateAccountPage(),
      binding: PhoneLoginBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_LOGIN,
      page: () => PhoneLoginPage(),
      binding: PhoneLoginBinding(),
    ),
    GetPage(
      name: _Paths.CURRENT_LOCATION,
      page: () => const CurrentLocationPage(),
      binding: CurrentLocationBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_PAGE,
      page: () => EnterProfession(),
      binding: PhoneLoginBinding(),
    ),
    GetPage(
      name: _Paths.DASH_BOARD,
      page: () => DashBoardPage(),
      binding: DashBoardBinding(),
    ),
    GetPage(
      name: _Paths.MYCOMPANY,
      page: () => MyCompanyPage(),
    ),
    GetPage(
      name: _Paths.VIDEO_DETAIL_PAGE,
      page: () => VideoDetailPage(),
      binding: VideoDetailPageBinding(),
    ),
  ];
}
