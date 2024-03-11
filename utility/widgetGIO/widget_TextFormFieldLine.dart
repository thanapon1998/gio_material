// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';

class WidgetTextFormFieldLine extends StatelessWidget {
  const WidgetTextFormFieldLine({
    Key? key,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // maxLength: 13,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: StyleGIO().colorTextLight,
        suffixIcon: suffixIcon,
        suffixIconColor: StyleGIO().colorTextLight,
        errorStyle: TextStyle(fontFamily: StyleGIO().fontNotoSansThai),
        labelText: labelText,
        labelStyle: TextStyle(
            color: StyleGIO().colorTextLight,
            fontFamily: StyleGIO().fontNotoSansThai),
      ),
    );
  }
}
