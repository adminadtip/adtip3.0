import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CIconImage extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  const CIconImage({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        image,
        height: 24.h,
        width: 24.w,
      ),
    );
  }
}
