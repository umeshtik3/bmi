import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? titleText;
  final TextStyle? textStyle;
  CustomText({this.titleText, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText.toString(),
      style: textStyle,
    );
  }
}