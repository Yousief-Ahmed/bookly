import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? fontSize;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String? fontFamily;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    this.borderRadius,
    this.fontSize,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
        ),
        fixedSize: Size.fromHeight(48),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle20.copyWith(
          fontWeight: FontWeight.bold,
          color: textColor,
          fontSize: fontSize,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
