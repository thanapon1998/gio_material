// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';

class WidgetCardClinic extends StatelessWidget {
  const WidgetCardClinic({
    Key? key,
    this.child,
    this.borderRadius,
  }) : super(key: key);

  final Widget? child;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: StyleGIO().colorShadow, blurRadius: 4)],
        color: StyleGIO().colorWhite,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
