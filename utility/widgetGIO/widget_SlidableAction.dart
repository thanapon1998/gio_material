// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../styleGIO/style_gio.dart';

class WidgetSlidableAction extends StatelessWidget {
  const WidgetSlidableAction({
    Key? key,
    this.lable,
    this.icon,
    this.spacing,
    this.foregroundColor,
    this.backgroundColor,
    this.onPressed,
  }) : super(key: key);

  final String? lable;
  final IconData? icon;
  final double? spacing;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final void Function(BuildContext)? onPressed;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: onPressed,
      icon: icon,
      label: lable,
      spacing: spacing ?? 10,
      foregroundColor: foregroundColor ?? StyleGIO().colorBlack,
      backgroundColor: backgroundColor ?? Colors.transparent,
    );
  }
}
