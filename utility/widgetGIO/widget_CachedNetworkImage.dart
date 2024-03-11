// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class widget_CachedNetworkImage extends StatelessWidget {
  const widget_CachedNetworkImage({
    Key? key,
    required this.imageUrl,
    this.errorWidget,
    this.borderRadius,
  }) : super(key: key);

  final String imageUrl;
  final Widget Function(BuildContext, String, Object)? errorWidget;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(12),
      child: CachedNetworkImage(
          fit: BoxFit.cover,
          errorWidget: errorWidget ?? (context, url, error) => Container(),
          imageUrl: imageUrl),
    );
  }
}
