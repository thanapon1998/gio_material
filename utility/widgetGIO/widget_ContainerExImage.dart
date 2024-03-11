// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../styleGIO/style_gio.dart';

class widget_ContainerExImage extends StatelessWidget {
  const widget_ContainerExImage({
    Key? key,
    this.child,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget? child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        border: Border.all(color: StyleGIO().colorWhite),
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      width: width ?? 150,
      height: height ?? 150,
    );
  }
}
