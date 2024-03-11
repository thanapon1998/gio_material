// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetReceiptBuyer extends StatelessWidget {
  const WidgetReceiptBuyer({
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
    this.status_statement,
    this.padding_vertical,
    this.padding_horizontal,
    this.thickness,
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
  final int? status_statement;
  final double? padding_vertical;
  final double? padding_horizontal;
  final double? thickness;
  final String admin;

  @override
  Widget build(BuildContext context) {
    return Container();

    //  Container(
    //   width: paper,
    //   color: StyleGIO().colorWhite,
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(
    //         vertical: padding_vertical ?? 30,
    //         horizontal: padding_horizontal ?? 12),
    //     child: Wrap(
    //       children: [
    //         Column(
    //           children: [
    //             // widget_ContainerExImage(
    //             //     width: logo,
    //             //     height: logo,
    //             //     child: widget_CachedNetworkImage(
    //             //         imageUrl:
    //             //             'https://giolabsoft-pos.com/giobuyerapp/images/${branchModel[0].branch_logo}')),
    //             WidgetTextNormal(
    //               text: '',
    //               fontSize: subtitle,
    //             ),
    //             WidgetTextNormal(
    //               text: branchModel[0].shop_name,
    //               fontSize: title,
    //               textAlign: TextAlign.center,
    //             ),
    //             WidgetTextNormal(
    //               text: branchModel[0].branch_name,
    //               fontSize: subtitle,
    //               textAlign: TextAlign.center,
    //             ),
    //             WidgetTextNormal(
    //               text:
    //                   '${branchModel[0].branch_address} โทร ${branchModel[0].branch_phone}',
    //               fontSize: subtitle,
    //               textAlign: TextAlign.center,
    //             ),
    //             WidgetTextNormal(
    //               text: '',
    //               fontSize: subtitle,
    //             ),
    //             WidgetTextNormal(
    //               text: status_statement == 1
    //                   ? 'เลขที่ใบเสร็จซื้อ : $order_name'
    //                   : status_statement == 2
    //                       ? 'เลขที่ใบเสร็จขาย : $order_name'
    //                       : 'เลขที่ใบเสร็จ : $order_name',
    //               fontSize: subtitle,
    //               textAlign: TextAlign.center,
    //             ),
    //             WidgetTextNormal(
    //               text: '',
    //               fontSize: subtitle,
    //             ),
    //             Row(
    //               children: [
    //                 Expanded(
    //                   child: WidgetTextNormal(
    //                     text: 'ลูกค้า: $customer_name',
    //                     fontSize: subtitle,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Row(
    //               children: [
    //                 Expanded(
    //                   child: WidgetTextNormal(
    //                     text: 'พนักงาน: $admin',
    //                     fontSize: subtitle,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             WidgetTextNormal(
    //               text: '',
    //               fontSize: subtitle,
    //             ),
    //             Row(
    //               children: [
    //                 Expanded(
    //                   child: WidgetTextNormal(
    //                     text: 'วันที่: ${formattedReceiptThai(order_date)}',
    //                     fontSize: subtitle,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Divider(
    //               color: StyleGIO().colorTextLight,
    //               thickness: thickness,
    //             ),
    //             Row(
    //               children: [
    //                 Expanded(
    //                   flex: 2,
    //                   child: WidgetTextNormal(
    //                     text: 'สินค้า',
    //                     fontSize: detail,
    //                     fontWeight: FontWeight.bold,
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //                 Expanded(
    //                   flex: 2,
    //                   child: WidgetTextNormal(
    //                     text: 'จำนวน (กก.)',
    //                     fontSize: detail - 1,
    //                     fontWeight: FontWeight.bold,
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //                 Expanded(
    //                   flex: 2,
    //                   child: WidgetTextNormal(
    //                     text: 'ราคา',
    //                     fontSize: detail,
    //                     fontWeight: FontWeight.bold,
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //                 Expanded(
    //                   flex: 2,
    //                   child: WidgetTextNormal(
    //                     text: 'รวม',
    //                     fontSize: detail,
    //                     fontWeight: FontWeight.bold,
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Divider(
    //               color: StyleGIO().colorTextLight,
    //               thickness: thickness,
    //             ),
    //             Column(
    //               children: [
    //                 for (int index = 0;
    //                     index < cartProductModel.length;
    //                     index++)
    //                   Column(
    //                     children: [
    //                       Row(
    //                         children: [
    //                           Expanded(
    //                             flex: 2,
    //                             child: Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 WidgetTextNormal(
    //                                   text:
    //                                       cartProductModel[index].product_name,
    //                                   fontWeight: FontWeight.bold,
    //                                   textAlign: TextAlign.start,
    //                                   fontSize: detail,
    //                                 ),
    //                                 cartProductModel[index].product_name ==
    //                                         cartProductModel[index].option_name
    //                                     ? Container()
    //                                     : WidgetTextNormal(
    //                                         text:
    //                                             '${cartProductModel[index].option_name}',
    //                                         textAlign: TextAlign.start,
    //                                         fontSize: detail,
    //                                       ),
    //                                 double.parse(cartProductModel[index]
    //                                             .amount_reduce) ==
    //                                         0
    //                                     ? Container()
    //                                     : WidgetTextNormal(
    //                                         text:
    //                                             '- หัก ${formatCurrencyCheckDecimal(double.parse(cartProductModel[index].amount_reduce))} กก.',
    //                                         textAlign: TextAlign.start,
    //                                         fontSize: detail - 1,
    //                                         color: StyleGIO().colorTextLight,
    //                                       ),
    //                                 double.parse(cartProductModel[index]
    //                                             .amount_reduce_percent) ==
    //                                         0
    //                                     ? Container()
    //                                     : WidgetTextNormal(
    //                                         text:
    //                                             '- หัก ${formatCurrencyCheckDecimal(double.parse(cartProductModel[index].amount_reduce_percent))} %',
    //                                         textAlign: TextAlign.start,
    //                                         color: StyleGIO().colorTextLight,
    //                                         fontSize: detail - 1,
    //                                       ),
    //                               ],
    //                             ),
    //                           ),
    //                           Expanded(
    //                             flex: 2,
    //                             child: WidgetTextNormal(
    //                               text: formatCurrencyCheckDecimal(double.parse(
    //                                   cartProductModel[index].product_amount)),
    //                               textAlign: TextAlign.center,
    //                               fontSize: detail,
    //                             ),
    //                           ),
    //                           Expanded(
    //                             flex: 2,
    //                             child: WidgetTextNormal(
    //                               text: formatCurrencyCheckDecimal(double.parse(
    //                                   cartProductModel[index].option_price)),
    //                               textAlign: TextAlign.center,
    //                               fontSize: detail,
    //                             ),
    //                           ),
    //                           Expanded(
    //                             flex: 2,
    //                             child: WidgetTextNormal(
    //                               text: formatCurrency(double.parse(
    //                                   cartProductModel[index].sum)),
    //                               textAlign: TextAlign.end,
    //                               fontSize: detail,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                       Divider(thickness: thickness)
    //                     ],
    //                   )
    //               ],
    //             ),

    //             // Divider(
    //             //   color: Colors.black,
    //             // ),
    //             Row(
    //               children: [
    //                 WidgetTextNormal(
    //                   text: 'รวม',
    //                   textAlign: TextAlign.start,
    //                   fontSize: detail,
    //                   // fontWeight: FontWeight.bold,
    //                 ),
    //                 Spacer(),
    //                 WidgetTextNormal(
    //                   text: formatCurrency(total),
    //                   textAlign: TextAlign.end,
    //                   fontSize: detail,
    //                   // fontWeight: FontWeight.bold,
    //                 )
    //               ],
    //             ),
    //             Divider(
    //               color: StyleGIO().colorBlack,
    //               thickness: thickness,
    //             ),
    //             Row(
    //               children: [
    //                 WidgetTextNormal(
    //                   text: 'ยอดชำระ',
    //                   textAlign: TextAlign.start,
    //                   fontSize: detail,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //                 Spacer(),
    //                 WidgetTextNormal(
    //                   text: formatCurrency(payment),
    //                   textAlign: TextAlign.end,
    //                   fontSize: detail,
    //                   fontWeight: FontWeight.bold,
    //                 )
    //               ],
    //             ),
    //             Divider(
    //               color: Colors.black,
    //               thickness: thickness,
    //             ),
    //             WidgetTextNormal(
    //               text: branchModel[0].branch_text,
    //               textAlign: TextAlign.center,
    //               fontSize: detail,
    //             ),
    //             WidgetTextNormal(text: '', fontSize: detail),
    //             WidgetTextNormal(text: '', fontSize: detail),
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
