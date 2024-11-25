import 'dart:io';

int maxNumber(int num1, int num2, int num3) {
  return [num1, num2, num3].reduce((a, b) => a > b ? a : b);
}

void main() {
  print('กรุณากรอกเลขตัวที่ 1:');
  int? num1 = int.tryParse(stdin.readLineSync() ?? '');

  print('กรุณากรอกเลขตัวที่ 2:');
  int? num2 = int.tryParse(stdin.readLineSync() ?? '');

  print('กรุณากรอกเลขตัวที่ 3:');
  int? num3 = int.tryParse(stdin.readLineSync() ?? '');

  if (num1 != null && num2 != null && num3 != null) {
    print('ตัวเลขที่มากที่สุดคือ: ${maxNumber(num1, num2, num3)}');
  } else {
    print('กรุณากรอกตัวเลขที่ถูกต้องทั้งหมด');
  }
}
