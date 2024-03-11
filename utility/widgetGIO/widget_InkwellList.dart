import 'package:flutter/material.dart';

import 'widget_Text.dart';

class WidgetInkwell extends StatelessWidget {
  const WidgetInkwell({
    Key? key,
    this.widgetText,
    this.ontap,
  }) : super(key: key);

  final WidgetText? widgetText;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: ontap,
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: widgetText ?? Container()),
            ],
          ),
        ),
      ),
    );
  }
}
