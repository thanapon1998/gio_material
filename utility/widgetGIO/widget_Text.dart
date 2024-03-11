// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final Color? color;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color ?? StyleGIO().colorBlack,
          fontFamily: fontFamily ?? StyleGIO().fontNotoSansThai),
      textAlign: textAlign,
    );
  }
}
