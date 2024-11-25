import 'dart:math';
import 'dart:io';

String generateRandomPassword(int length) {
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String digits = '0123456789';
  const String specialChars = '!@#\$%^&*()_+-=[]{}|;:",.<>?';

  final String allChars = uppercase + lowercase + digits + specialChars;

  final Random random = Random();
  String password = '';
  password += uppercase[random.nextInt(uppercase.length)];
  password += lowercase[random.nextInt(lowercase.length)];
  password += digits[random.nextInt(digits.length)];
  password += specialChars[random.nextInt(specialChars.length)];

  for (int i = 4; i < length; i++) {
    password += allChars[random.nextInt(allChars.length)];
  }

  password = (password.split('')..shuffle(random)).join();

  return password;
}

void main() {
  print('กรุณากำหนดจำนวนตัวอักษรของรหัสผ่านที่ต้องการ:');
  int? passwordLength = int.tryParse(stdin.readLineSync()!);

  if (passwordLength == null || passwordLength < 4) {
    print('กรุณาใส่ตัวเลขที่มากกว่าหรือเท่ากับ 4');
    return;
  }

  String randomPassword = generateRandomPassword(passwordLength);
  print('รหัสผ่านที่สร้างคือ: $randomPassword');
}
