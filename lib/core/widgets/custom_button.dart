import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    this.fontSize,
    required this.text,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final double? fontSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          backgroundColor: backgroundColor,
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
