import 'dart:io';

void main() {
  stdout.write("กรอกยอดรวมค่าอาหาร: ");
  double? totalBill = double.tryParse(stdin.readLineSync()!);

  stdout.write("กรอกจำนวนคน: ");
  int? numberOfPeople = int.tryParse(stdin.readLineSync()!);

  if (totalBill == null || numberOfPeople == null || numberOfPeople <= 0) {
    print("ข้อมูลไม่ถูกต้อง กรุณากรอกตัวเลขที่ถูกต้องและจำนวนคนต้องมากกว่า 0");
    return;
  }

  double splitAmount = totalBill / numberOfPeople;

  print("แต่ละคนต้องจ่าย: ฿${splitAmount.toStringAsFixed(2)}");
}
