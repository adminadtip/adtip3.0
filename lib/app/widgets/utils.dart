import 'package:adtip_app/app/helpers/constant/colors.dart';
import 'package:adtip_app/app/helpers/constant/sharedpref_key.dart';
import 'package:adtip_app/app/helpers/localDatabase/local_prefs.dart';
import 'package:adtip_app/app/modules/authentication/phone_login/page/phone_login_page.dart';
import 'package:adtip_app/app/modules/profile/controller/profile_controller.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

import '../modules/ad_model/skip_video/widget/custom_video_player.dart';

class Utils {
  static void showSuccessMessage(String message) {
    Get.snackbar(message, '',
        backgroundColor: Colors.green, colorText: Colors.white);
  }

  static void showErrorMessage(String message) {
    Get.snackbar(message, '',
        backgroundColor: Colors.red, colorText: Colors.white);
  }

// get formated date to send in api.
  static String getDateYYYYMMDD() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    printLog(formattedDate); // 2016-01-25

    return formattedDate;
  }

// print only in debug mode
  static void printLog(String msg) {
    if (kDebugMode) {
      print(msg);
    }
  }

  static String limitString(String input, {int maxLength = 10}) {
    if (input.length <= maxLength) {
      return input;
    } else {
      return input.substring(0, maxLength);
    }
  }

  static String timeAgo(DateTime date, {bool numericDates = true}) {
    final date2 = DateTime.now();
    final difference = date2.difference(date);

    if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }

  static String validateImage(String? image) {
    if (image == null ||
        image.isEmpty ||
        image == 'NA' ||
        image == 'undefined') {
      return 'https://adtip135224-dev.s3.amazonaws.com/public/images/no-image.png';
    } else {
      return image;
    }
  }

  static String numberGen(num) {
    if (num > 999 && num < 99999) {
      return "${(num / 1000).toStringAsFixed(0)} K";
    } else if (num > 99999 && num < 999999) {
      return "${(num / 1000).toStringAsFixed(0)} K";
    } else if (num > 999999 && num < 999999999) {
      return "${(num / 1000000).toStringAsFixed(0)} M";
    } else if (num > 999999999) {
      return "${(num / 1000000000).toStringAsFixed(0)} B";
    } else {
      return num.toString();
    }
  }

  static Future<dynamic> navigationToPhoneLoginPage(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PhoneLoginPage(),
      ),
    );
  }

  static void flutterToastUtilError(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static void flutterToastUtilSuccess(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static void snackBarWithContextError(String message, BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void snackBarWithContextSuccess(String message, BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static Future<dynamic> navigationToAnyPage(
      BuildContext context, Widget navigationScreen) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => navigationScreen,
      ),
    );
  }

  static int fetchCurrentUserFromLocalPreference() {
    int userId =
        LocalPrefs().getIntegerPref(key: SharedPreferenceKey.UserId) ?? 0;
    return userId;
  }

  static String fetchLoggedInUserFromLocalPreference() {
    return LocalPrefs().getStringPref(key: 'name') ?? "User";
  }

  static String newUrl(String url) {
    String patternToReplace = 'https://adtip135224-dev.s3.amazonaws.com/';
    if (url.startsWith(patternToReplace)) {
      String replacedString = url.replaceFirst(
        patternToReplace,
        'https://d24boe3940mg96.cloudfront.net/',
      );
      print('replaced string $replacedString');
      return replacedString;
    } else {
      return url;
    }
  }

  static void showLostMoneyDialog(
    BuildContext context, {
    required String heading1,
    required String heading2,
    required String imageAssetPath,
    required String contentMessage,
  }) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Column(
            children: [
              Text(heading1),
              Text(
                heading2,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          content: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Image.asset(
                imageAssetPath,
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 5,
              ),
              CupertinoDialogAction(
                child: Text(
                  contentMessage,
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<String> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      return pickedFile.path;
    } else {
      return '';
    }
  }

  ///userimage

  static Future<String> uploadImageToAwsAmplify(
      {required String path, required String folderName}) async {
    try {
      var uuid = Uuid();
      String newName = uuid.v4();
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromPath(path),
        key: '$folderName/$newName.jpg',
        // onProgress: (progress) {
        //   safePrint('Fraction completed: ${progress.fractionCompleted}');
        //   setState(() {
        //     value = progress.fractionCompleted;
        //   });
        // },
      ).result;
      //return 'https://adtip135224-dev.s3.amazonaws.com/public/videos/$newName.mp4';
      return 'https://d24boe3940mg96.cloudfront.net/public/$folderName/$newName.jpg';
    } on StorageException catch (e) {
      safePrint('Error uploading file: $e');
      Utils.showErrorMessage('Error uploading file.');
      rethrow;
    }
  }

  static Future<String> uploadVideoToAwsAmplify(
      {required String path, required String folderName}) async {
    try {
      var uuid = Uuid();
      String newName = uuid.v4();
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromPath(path),
        key: '$folderName/$newName.mp4',
        // onProgress: (progress) {
        //   safePrint('Fraction completed: ${progress.fractionCompleted}');
        //   setState(() {
        //     value = progress.fractionCompleted;
        //   });
        // },
      ).result;
      //return 'https://adtip135224-dev.s3.amazonaws.com/public/videos/$newName.mp4';
      return 'https://d24boe3940mg96.cloudfront.net/public/$folderName/$newName.mp4';
    } on StorageException catch (e) {
      safePrint('Error uploading file: $e');
      Utils.showErrorMessage('Error uploading file.');
      rethrow;
    }
  }

  static Future<void> launchWeb(String url) async {
    try {
      if (url.startsWith('http://') || url.startsWith('https://')) {
        if (!await launchUrl(Uri.parse(url),
            mode: LaunchMode.externalApplication)) {
          throw Exception('Could not launch $url');
        }
      } else {
        if (!await launchUrl(Uri.parse('https://$url'),
            mode: LaunchMode.externalApplication)) {
          throw Exception('Could not launch $url');
        }
      }
    } catch (e) {
      Utils.showErrorMessage('Unable to launch website');
    }
  }

  static Future<void> launchPhone(String url) async {
    try {
      if (!await launchUrl(Uri.parse(url))) {
        throw Exception('Could not launch $url');
      }
    } catch (e) {
      if (kDebugMode) {
        print('erro $e');
      }
      Utils.showErrorMessage('Unable to phone call');
    }
  }

  static showDialogDemoVideo(
      {required BuildContext context, required String videoLink}) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            insetPadding: EdgeInsets.only(left: 10.h, right: 10.w),
            content: SingleChildScrollView(
              child: SizedBox(
                // height: 200,
                width: Get.width - 50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.cancel),
                        )),
                    SizedBox(height: 10.h),
                    CustomVideoPlayer(height: 210, videoUrl: videoLink)
                  ],
                ),
              ),
            ),
          );
        });
  }

  static void showAlertDialogYesNo(
      {required BuildContext context,
      required String title,
      required VoidCallback function,
      required String subtitle}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(subtitle),
            actions: [
              TextButton(
                  onPressed: () {
                    function();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'))
            ],
          );
        });
  }

  static bool isValidUrl(String url) {
    final Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return false;
    }
    if (uri.hasAbsolutePath) {
      return true;
    }
    return false;
  }
}

class SnackBarLoginUtil {
  static snackBarLogin(BuildContext context) {
    return SnackBar(
      content: Text("Sign in into the app to access this data."),
      duration: Duration(seconds: 5), // Adjust the duration as needed
      action: SnackBarAction(
        label: 'Sign In',
        onPressed: () {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Utils.navigationToPhoneLoginPage(context);
          });
        },
      ),
    );
  }

  static alertDialogBoxSignIn(BuildContext context) {
    return AlertDialog(
      title: Text('Sign in required'),
      content: Text('Sign in is required to access this feature.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Utils.navigationToPhoneLoginPage(context);
            });
          },
          child: Text('Sign In'),
        ),
      ],
    );
  }
}
