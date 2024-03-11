import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';
import 'widget_Text.dart';

class WidgetAppBarBackTransparent extends StatelessWidget {
  const WidgetAppBarBackTransparent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: StyleGIO().colorBlack,
      backgroundColor: StyleGIO().colorTransparent,
      // shadowColor: Colors.transparent,
      // bottomOpacity: 0.0,
      elevation: 0.0,
      leading: IconButton(
        iconSize: 16,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: StyleGIO().iconBack,
      ),

      title: WidgetText(
        text: 'กลับหน้าแรก',
        fontSize: 16,
      ),
    );
  }
}
