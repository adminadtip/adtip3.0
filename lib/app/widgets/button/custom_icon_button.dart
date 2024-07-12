import 'package:adtip_app/app/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.black900.withOpacity(0.87),
                  borderRadius: BorderRadius.circular(24),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.2),
        borderRadius: BorderRadius.circular(34),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            39,
          ),
          topRight: Radius.circular(
            38,
          ),
          bottomLeft: Radius.circular(
            39,
          ),
          bottomRight: Radius.circular(
            38,
          ),
        ),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red500,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            39,
          ),
          topRight: Radius.circular(
            38,
          ),
          bottomLeft: Radius.circular(
            39,
          ),
          bottomRight: Radius.circular(
            38,
          ),
        ),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink90001,
        borderRadius: BorderRadius.circular(10),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1,
        ),
      );
}
