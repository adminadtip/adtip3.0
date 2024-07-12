import 'package:adtip_app/app/helpers/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CLoginButton extends StatelessWidget {
  final String title;
  final String? image;
  final Color buttonColor;
  final Color textColor;
  final bool showImage;
  final double? height;
  final VoidCallback onTap;
  final bool isLoading;
  final double? radius;
  CLoginButton(
      {super.key,
      required this.title,
      this.image,
      this.isLoading = false,
      required this.buttonColor,
      required this.textColor,
      required this.showImage,
      required this.onTap,
      this.radius,
      this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 10.r)),
        elevation: 2.2,
        child: Container(
          height: height ?? 50.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // border: Border.all(color: AdtipColors.black),
              color: buttonColor,
              borderRadius: BorderRadius.circular(radius ?? 10.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showImage == true)
                SizedBox(
                    height: 24.h,
                    width: 24.h,
                    child: SvgPicture.asset(image.toString())),
              SizedBox(
                width: 10.w,
              ),
              isLoading
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text(
                      title,
                      style: GoogleFonts.inter(
                          color: textColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class CBackButton extends StatelessWidget {
  const CBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.h,
      padding: EdgeInsets.only(left: 7.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: AdtipColors.grey),
          borderRadius: BorderRadius.circular(8.r)),
      child: Icon(
        Icons.arrow_back_ios,
        size: 20.sp,
      ),
    );
  }
}
