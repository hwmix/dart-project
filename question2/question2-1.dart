import 'dart:io';

void main() {
  print("กรุณากรอกตัวเลข: ");
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number != null) {
    if (number % 2 == 0) {
      print("$number เป็นเลขคู่");
    } else {
      print("$number เป็นเลขคี่");
    }
  } else {
    print("กรุณากรอกตัวเลขที่ถูกต้อง");
  }
}
