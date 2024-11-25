import 'dart:io';

void main() {
  // ขอให้ผู้ใช้ป้อนตัวอักษร
  print('กรุณาป้อนตัวอักษร: ');
  String? input = stdin.readLineSync();

  // ตรวจสอบว่าผู้ใช้ป้อนข้อมูลหรือไม่
  if (input != null && input.length == 1) {
    // แปลงตัวอักษรให้เป็นตัวพิมพ์เล็กเพื่อความสะดวกในการตรวจสอบ
    String char = input.toLowerCase();

    // ตรวจสอบว่าเป็นสระหรือพยัญชนะ
    if ('aeiou'.contains(char)) {
      print('$char เป็นสระ');
    } else if (RegExp(r'^[a-zA-Z]$').hasMatch(char)) {
      print('$char เป็นพยัญชนะ');
    } else {
      print('กรุณาป้อนตัวอักษรภาษาอังกฤษเท่านั้น');
    }
  } else {
    print('กรุณาป้อนตัวอักษรเพียงหนึ่งตัว');
  }
}
