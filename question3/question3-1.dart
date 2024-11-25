int maxNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty");
  }
  return numbers.reduce((a, b) => a > b ? a : b);
}

void main() {
  List<int> nums = [3, 7, 2, 9, 5];
  print("ตัวเลขที่มากที่สุดคือ: ${maxNumber(nums)}");
}
