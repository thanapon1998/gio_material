// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';

class WidgetElevatedButtonIcon extends StatelessWidget {
  const WidgetElevatedButtonIcon({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontFamily,
    this.backgroundColor,
    this.fontWeight,
    this.padding,
    this.prefixIcon,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;
  final String? fontFamily;
  final Color? backgroundColor;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(prefixIcon),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: fontFamily ?? StyleGIO().fontNotoSansThai,
                fontWeight: fontWeight),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        padding: padding,
        backgroundColor: backgroundColor ?? StyleGIO().colorPrimary,
      ),
    );
  }
}
