// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';

class WidgetElevatedButton extends StatelessWidget {
  const WidgetElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontFamily,
    this.backgroundColor,
    this.fontWeight,
    this.padding,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;
  final String? fontFamily;
  final Color? backgroundColor;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: fontFamily ?? StyleGIO().fontNotoSansThai,
            fontWeight: fontWeight),
      ),
      style: ElevatedButton.styleFrom(
        padding: padding,
        backgroundColor: backgroundColor ?? StyleGIO().colorPrimary,
      ),
    );
  }
}
