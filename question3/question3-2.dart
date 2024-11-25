import 'dart:io';

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print('กรุณากรอกตัวเลข:');
  int? input = int.tryParse(stdin.readLineSync() ?? '');

  if (input != null) {
    print('ตัวเลข $input เป็นเลขคู่หรือไม่: ${isEven(input)}');
  } else {
    print('กรุณากรอกตัวเลขที่ถูกต้อง');
  }
}
