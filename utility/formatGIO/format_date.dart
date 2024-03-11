import 'package:intl/intl.dart';

formattedDate(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedDate = DateFormat.MMMMd('th_TH').format(dateTime);
    int formatted = int.parse(DateFormat.y('th_TH').format(dateTime)) + 543;
    String formattedYear = '$formattedDate พ.ศ. $formatted';
    return formattedYear;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

formattedDateNot(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedDate = DateFormat.MMMMd('th_TH').format(dateTime);
    int formatted = int.parse(DateFormat.y('th_TH').format(dateTime)) + 543;
    String formattedYear = '$formattedDate $formatted';
    return formattedYear;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

//15 กรกฎาคม 2556
formattedReceiptThaiMonthFullNotTime(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedDate = DateFormat('dd').format(dateTime);
    String formattedMonth =
        formatMonthThaiFull(DateFormat('MM').format(dateTime));

    String formattedYear =
        (int.parse(DateFormat('yyyy').format(dateTime)) + 543).toString();

    // String formattedTime = DateFormat('HH:mm').format(dateTime);
    String formattedThai =
        formattedDate + ' ' + formattedMonth + ' ' + formattedYear;
    return formattedThai;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

// 25 ตุลาคม พ.ศ.2566
formatDateThaiFull(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedDate = DateFormat('dd').format(dateTime);
    String formattedMonth =
        formatMonthThaiFull(DateFormat('MM').format(dateTime));

    String formattedYear =
        (int.parse(DateFormat('yyyy').format(dateTime)) + 543).toString();

    String formattedThai =
        formattedDate + ' ' + formattedMonth + ' พ.ศ.' + formattedYear;
    return formattedThai;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

// HH:mm
formattedTime(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedTime = DateFormat('HH:mm').format(dateTime);
    return formattedTime;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

//HH:mm:ss
formattedTimeSS(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedTime = DateFormat('HH:mm:ss').format(dateTime);
    return formattedTime;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

formattedReceipt(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedTime = DateFormat('dd-MM-yyyy HH:mm').format(dateTime);
    return formattedTime;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

formatMonthThai(dt) {
  switch (dt) {
    case '01':
      return 'ม.ค.';
    case '02':
      return 'ก.พ.';
    case '03':
      return 'มี.ค.';
    case '04':
      return 'เม.ย.';
    case '05':
      return 'พ.ค.';
    case '06':
      return 'มิ.ย.';
    case '07':
      return 'ก.ค.';
    case '08':
      return 'ส.ค.';
    case '09':
      return 'ก.ย.';
    case '10':
      return 'ต.ค.';
    case '11':
      return 'พ.ย.';
    case '12':
      return 'ธ.ค.';
    default:
  }
}

formatMonthThaiFull(dt) {
  switch (dt) {
    case '01':
      return 'มกราคม';
    case '02':
      return 'กุมภาพันธ์';
    case '03':
      return 'มีนาคม';
    case '04':
      return 'เมษายน';
    case '05':
      return 'พฤษภาคม';
    case '06':
      return 'มิถุนายน';
    case '07':
      return 'กรกฎาคม';
    case '08':
      return 'สิงหาคม';
    case '09':
      return 'กันยายน';
    case '10':
      return 'ตุลาคม';
    case '11':
      return 'พฤศจิกายน';
    case '12':
      return 'ธันวาคม';
    default:
  }
}

//15 ก.ค. 2556 เวลา 00.00 น.
formattedReceiptThai(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedDate = DateFormat('dd').format(dateTime);
    String formattedMonth = formatMonthThai(DateFormat('MM').format(dateTime));

    String formattedYear =
        (int.parse(DateFormat('yyyy').format(dateTime)) + 543).toString();

    String formattedTime = DateFormat('HH:mm').format(dateTime);
    String formattedThai = formattedDate +
        ' ' +
        formattedMonth +
        ' ' +
        formattedYear +
        ' ' +
        'เวลา' +
        ' ' +
        formattedTime +
        ' ' +
        'น.';
    return formattedThai;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}

//15 ก.ค. 2556
formattedReceiptThaiNotTime(dt) {
  try {
    DateTime dateTime = DateTime.parse(dt);
    String formattedDate = DateFormat('dd').format(dateTime);
    String formattedMonth = formatMonthThai(DateFormat('MM').format(dateTime));

    String formattedYear =
        (int.parse(DateFormat('yyyy').format(dateTime)) + 543).toString();

    // String formattedTime = DateFormat('HH:mm').format(dateTime);
    String formattedThai =
        formattedDate + ' ' + formattedMonth + ' ' + formattedYear;
    return formattedThai;
  } catch (e) {
    return dt.split('').toString() + e.toString();
  }
}
