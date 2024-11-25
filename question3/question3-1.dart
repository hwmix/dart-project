import 'dart:io';

int maxNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty");
  }
  return numbers.reduce((a, b) => a > b ? a : b);
}

void main() {
  stdout.write("กรอกตัวเลข (แยกด้วยช่องว่าง): ");
  List<String> input = stdin.readLineSync()!.split(' ');
  List<int> nums = input.map((e) => int.parse(e)).toList();
  try {
    int max = maxNumber(nums);
    print("ตัวเลขที่มากที่สุดคือ: $max");
  } catch (e) {
    print(e);
  }
}
