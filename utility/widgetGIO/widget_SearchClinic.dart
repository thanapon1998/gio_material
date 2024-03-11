// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../styleGIO/style_gio.dart';

class WidgetSearchClinic extends StatelessWidget {
  const WidgetSearchClinic({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        onChanged: onChanged,
        //  (value) {
        //   // setState(() {
        //   //   filterPatientModel = dropdownValue ==
        //   //           'รหัสผู้ป่วยนอก'
        //   //       ? patientModel
        //   //           .where((e) => (e.patient_code
        //   //               .toLowerCase()
        //   //               .contains(
        //   //                   value.toLowerCase())))
        //   //           .toList()
        //   //       : dropdownValue == 'บัตรประชาชน'
        //   //           ? patientModel
        //   //               .where((e) => (e
        //   //                   .patient_id_card
        //   //                   .toLowerCase()
        //   //                   .contains(
        //   //                       value.toLowerCase())))
        //   //               .toList()
        //   //           : patientModel
        //   //               .where((e) => (e.patient_name
        //   //                   .toLowerCase()
        //   //                   .contains(
        //   //                       value.toLowerCase())))
        //   //               .toList();
        //   // });
        // },
        decoration: InputDecoration(
            labelStyle: TextStyle(fontFamily: StyleGIO().fontNotoSansThai),
            labelText: 'ค้นหา',
            border: OutlineInputBorder()),
      ),
    );
  }
}
