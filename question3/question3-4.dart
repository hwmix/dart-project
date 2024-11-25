import 'dart:io';

int calculateArea(int length, int width) {
  return length * width;
}

void main() {
  stdout.write("กรอกความยาวของสี่เหลี่ยมผืนผ้า: ");
  int length = int.parse(stdin.readLineSync()!);

  stdout.write("กรอกความกว้างของสี่เหลี่ยมผืนผ้า: ");
  int width = int.parse(stdin.readLineSync()!);

  print("พื้นที่ของสี่เหลี่ยมผืนผ้าคือ: ${calculateArea(length, width)}");
}
