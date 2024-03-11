// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';

class WidgetTextFormField extends StatelessWidget {
  const WidgetTextFormField({
    Key? key,
    this.labelText,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.keyboardType,
  }) : super(key: key);

  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        border: OutlineInputBorder(),
        labelText: labelText,
        labelStyle: TextStyle(
            color: StyleGIO().colorTextLight,
            fontFamily: StyleGIO().fontNotoSansThai),
        prefixIcon: prefixIcon,
        prefixIconColor: StyleGIO().colorTextLight,
        suffixIcon: suffixIcon,
        suffixIconColor: StyleGIO().colorTextLight,
        errorStyle: TextStyle(fontFamily: StyleGIO().fontNotoSansThai),
      ),
      obscureText: obscureText ?? false,
      // style: TextStyle(fontFamily: StyleGIO().fontNotoSansThai),
    );
  }
}
