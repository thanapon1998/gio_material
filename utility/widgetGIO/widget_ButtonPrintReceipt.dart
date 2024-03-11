// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';
import 'package:image/image.dart' as imageLib;
import 'package:screenshot/screenshot.dart';

import 'widget_ElevatedButton.dart';
import 'widget_ReceiptBuyer.dart';
import 'widget_ShowDialog.dart';

class WidgetButtonPrintReceipt extends StatelessWidget {
  const WidgetButtonPrintReceipt({
    Key? key,
    required this.paper,
    required this.logo,
    required this.title,
    required this.subtitle,
    required this.detail,
    // required this.cartProductModel,
    required this.total,
    required this.payment,
    required this.order_name,
    required this.customer_name,
    required this.order_date,
    required this.paperSize,
    required this.sizePapaerPrint,
    required this.admin,
  }) : super(key: key);

  final double paper;
  final double logo;
  final double title;
  final double subtitle;
  final double detail;
  // final List<CartProductModel> cartProductModel;
  final double total;
  final double payment;
  final String order_name;
  final String customer_name;
  final String order_date;
  final PaperSize paperSize;
  final String sizePapaerPrint;
  final String admin;

  @override
  Widget build(BuildContext context) {
    return WidgetElevatedButton(
      text: 'พิมพ์ใบเสร็จ',
      onPressed: () {
        // Imin.openDrawer();
        ScreenshotController()
            .captureFromWidget(WidgetReceiptBuyer(
                admin: admin,
                padding_horizontal: 0,
                padding_vertical: 0,
                thickness: 1,
                paper: paper,
                logo: logo,
                title: title,
                subtitle: subtitle,
                detail: detail,
                // cartProductModel: cartProductModel,
                total: total,
                payment: payment,
                order_name: order_name,
                customer_name: customer_name,
                order_date: order_date))
            // .capture(delay: Duration(milliseconds: 10))
            .then((capturedImage) async {
          try {
            List<int> bytes = [];
            // Using default profile
            final profile = await CapabilityProfile.load();
            final generator = Generator(paperSize, profile);
            //bytes += generator.setGlobalFont(PosFontType.fontA);
            bytes += generator.reset();
            bytes += generator.drawer();
            final imageLib.Image? image = imageLib.decodeImage(capturedImage);
            bytes += generator.image(image!);

            if (sizePapaerPrint == '80') {
              // bytes += generator.feed(1);
              bytes += generator.cut();
            }
            //
            // bytes += generator.cut();
            await BluetoothManager.instance.writeData(bytes);
          } catch (e) {
            print(e);
          }
        });
        actionDialog(context, 'กำลังพิมพ์ใบเสร็จ', 'Status : กรุณารอสักครู่...',
            () {
          Navigator.pop(context);
        });
      },
    );
  }
}
