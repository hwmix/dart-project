import 'dart:math';
import 'dart:io';

String generateRandomPassword(int length) {
  // Define characters to use in the password
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String digits = '0123456789';
  const String specialChars = '!@#\$%^&*()_+-=[]{}|;:",.<>?';

  // Combine all characters
  final String allChars = uppercase + lowercase + digits + specialChars;

  // Ensure password includes at least one character from each set
  final Random random = Random();
  String password = '';
  password += uppercase[random.nextInt(uppercase.length)];
  password += lowercase[random.nextInt(lowercase.length)];
  password += digits[random.nextInt(digits.length)];
  password += specialChars[random.nextInt(specialChars.length)];

  // Add random characters to meet the desired length
  for (int i = 4; i < length; i++) {
    password += allChars[random.nextInt(allChars.length)];
  }

  // Shuffle the password
  password = (password.split('')..shuffle(random)).join();

  return password;
}

void main() {
  // รับจำนวนตัวอักษรรหัสผ่านจากผู้ใช้
  print('กรุณากำหนดจำนวนตัวอักษรของรหัสผ่านที่ต้องการ:');
  int? passwordLength = int.tryParse(stdin.readLineSync()!);

  // ตรวจสอบว่าอินพุตถูกต้อง
  if (passwordLength == null || passwordLength < 4) {
    print('กรุณาใส่ตัวเลขที่มากกว่าหรือเท่ากับ 4');
    return;
  }

  // สร้างรหัสผ่าน
  String randomPassword = generateRandomPassword(passwordLength);
  print('รหัสผ่านที่สร้างคือ: $randomPassword');
}
