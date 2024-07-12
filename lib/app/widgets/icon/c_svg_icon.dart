import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CSvgIcon extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  const CSvgIcon({super.key, required this.image, this.onTap});

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

class CSvgIconImage extends StatelessWidget {
  final String image;
  final Color color;
  final VoidCallback? onTap;
  const CSvgIconImage(
      {super.key, required this.image, this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        image,
        height: 32.h,
        width: 24.w,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
