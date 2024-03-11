// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';
import 'widget_Text.dart';

class WidgetListTileDrawer extends StatelessWidget {
  const WidgetListTileDrawer({
    Key? key,
    required this.title,
    required this.icon,
    this.iconColor,
    this.titleColor,
    this.ontap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Color? iconColor;
  final Color? titleColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: Icon(
        icon,
        color: iconColor ?? StyleGIO().colorWhite,
      ),
      title: WidgetText(
        text: title,
        color: titleColor ?? StyleGIO().colorWhite,
      ),
    );
  }
}
