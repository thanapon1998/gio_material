import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';
import 'widget_Text.dart';

Future<Null> showProgressDialog(BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) => WillPopScope(
      child: Center(
          child: CupertinoActivityIndicator(
        color: StyleGIO().colorWhite,
      )),
      onWillPop: () async {
        return false;
      },
    ),
  );
}

Future<Null> normalDialog(
    BuildContext context, String title, String message) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: ListTile(
        // leading: Image.asset(MyConstant.image1),
        title: WidgetText(text: title),
        subtitle: WidgetText(
          text: message,
          color: StyleGIO().colorTextLight,
        ),
      ),
      children: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))
      ],
    ),
  );
}

Future<Null> actionDialog(BuildContext context, String title, String message,
    void Function()? onPressed) async {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: ListTile(
        // leading: Image.asset(MyConstant.image1),
        title: WidgetText(text: title),
        subtitle: WidgetText(
          text: message,
          color: StyleGIO().colorTextLight,
        ),
      ),
      actions: [
        TextButton(
          onPressed: onPressed ??
              () {
                Navigator.pop(context);
              },
          child: Text('OK'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
      ],
    ),
  );
}
