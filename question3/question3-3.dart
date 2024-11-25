import 'dart:io';

Map<String, dynamic> createUser(String name, int age, {bool isActive = true}) {
  return {
    'name': name,
    'age': age,
    'isActive': isActive,
  };
}

void main() {
  // รับค่าชื่อจากผู้ใช้
  print('กรุณากรอกชื่อ:');
  String? name = stdin.readLineSync();

  if (name == null || name.isEmpty) {
    print('กรุณากรอกชื่อให้ถูกต้อง');
    return;
  }

  // รับค่าอายุจากผู้ใช้
  print('กรุณากรอกอายุ:');
  int? age = int.tryParse(stdin.readLineSync()!);

  if (age == null || age <= 0) {
    print('กรุณากรอกอายุที่ถูกต้อง (เป็นตัวเลขมากกว่า 0)');
    return;
  }

  // ถามผู้ใช้ว่าต้องการให้ isActive เป็น true หรือ false
  print('บัญชีนี้ใช้งานอยู่หรือไม่? (yes/no, ค่าเริ่มต้น: yes):');
  String? isActiveInput = stdin.readLineSync()?.toLowerCase();
  bool isActive = (isActiveInput == null || isActiveInput == 'yes');

  // สร้างผู้ใช้โดยใช้ฟังก์ชัน createUser
  Map<String, dynamic> user = createUser(name, age, isActive: isActive);

  // แสดงข้อมูลผู้ใช้
  print('ข้อมูลผู้ใช้ที่สร้าง:');
  print(user);
}
