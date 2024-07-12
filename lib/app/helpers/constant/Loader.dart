import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final double? height;
  const Loader({
    Key? key,
    this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.sizeOf(context).height / 1.5,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.purple,
        ),
      ),
    );
  }
}
