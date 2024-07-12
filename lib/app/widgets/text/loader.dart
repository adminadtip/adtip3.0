import 'package:flutter/material.dart';

showLoaderDialog(context, color) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Center(
          child: CircularProgressIndicator(
        color: color,
      ));
    },
  );
}
