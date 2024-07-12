import 'dart:async';
import 'dart:developer';

import 'package:adtip_app/app/core/globals.dart' as globals;
import 'package:adtip_app/app/helpers/constant/colors.dart';
import 'package:adtip_app/app/helpers/localDatabase/local_prefs.dart';
import 'package:adtip_app/app/modules/authentication/user_state.dart';
import 'package:adtip_app/app/modules/calling/models/notification_controller.dart';
import 'package:adtip_app/app/modules/calling/pages/callPage.dart';
import 'package:adtip_app/app/modules/dashBoard/page/dash_board_page.dart';
import 'package:adtip_app/app/routes/app_pages.dart';
import 'package:adtip_app/app/widgets/no_internet.dart';
import 'package:adtip_app/app/widgets/pref.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:upgrader/upgrader.dart';

import 'app/helpers/dynamic_link.dart';
import 'amplifyconfiguration.dart';
import 'app/modules/onboarding/onboarding_screen.dart';

Future<void> _configureAmplify() async {
  try {
    final auth = AmplifyAuthCognito();
    final storage = AmplifyStorageS3();
    await Amplify.addPlugins([auth, storage]);

    // call Amplify.configure to use the initialized categories in your app
    await Amplify.configure(amplifyconfig);
  } on Exception catch (e) {
    safePrint('An error occurred configuring Amplify: $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationController.initializeNotification();

  /// Initialize Firebase Cloud Messaging background handler

  await _configureAmplify();

  // runZonedGuarded(
  // () async {
  await LocalPrefs().init();
  await Firebase.initializeApp();
  FlutterError.onError = (FlutterErrorDetails details) {
    log(details.toString());
  };

  // Handle background messages
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // DynamicLinkHandler dynamicLinkHandler = Get.put(DynamicLinkHandler());
  ConnectivityResult _connectionStatus = ConnectivityResult.mobile;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e);
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }

  @override
  void initState() {
    Pref.init();
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          navigatorKey: navigatorKey,
          supportedLocales: const [
            Locale(
              'en',
              'US',
            ),
          ],

          title: 'Adtip App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            dialogBackgroundColor: AdtipColors.white,
            appBarTheme: const AppBarTheme(backgroundColor: AdtipColors.white),
            colorScheme:
                ColorScheme.fromSeed(seedColor: AdtipColors.adTipBlueColor),
            useMaterial3: true,
          ),
          home: _connectionStatus == ConnectivityResult.none
              ? NoInternet()
              : UserState(),
          // getPages: AppPages.routes,
        );
      },
    );
  }
}
