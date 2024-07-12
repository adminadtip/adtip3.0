import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'button/c_login_button.dart';

class NoVideoFound extends StatelessWidget {
  final VoidCallback function;
  const NoVideoFound({super.key, required this.function});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('No videos found, please upload video'),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: Get.width / 2,
          child: CLoginButton(
            title: 'Upload Video',
            onTap: function,
            buttonColor: Colors.black,
            textColor: Colors.white,
            showImage: false,
          ),
        ),
      ],
    );
  }
}
