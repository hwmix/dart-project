import 'dart:async';
import 'dart:io';

void main() async {
  // รับอินพุตตัวเลขแรกจากผู้ใช้
  stdout.write('Enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  // รับอินพุตตัวเลขที่สองจากผู้ใช้
  stdout.write('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Calculating the sum, please wait...');

  // รอ 3 วินาที
  await Future.delayed(Duration(seconds: 3));

  // คำนวณผลรวมและพิมพ์ผลลัพธ์
  int sum = num1 + num2;
  print('The sum of $num1 and $num2 is: $sum');
}
