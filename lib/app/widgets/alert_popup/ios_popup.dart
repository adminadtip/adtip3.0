import 'package:adtip_app/app/modules/my_wallet_screen/my_wallet_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void showDialogIos(
  BuildContext context, {
  required String heading1,
  required String heading2,
  required String imageAssetPath,
  required String contentMessage,
  required String actionText,
}) {
  showCupertinoDialog(
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
              height: 10,
            ),
            Image.asset(
              imageAssetPath,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
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
        actions: [
          CupertinoDialogAction(
            child: Text(
              actionText,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            onPressed: () {
              Get.to(() => MyWalletScreen());
            },
          ),
        ],
      );
    },
  );
}
