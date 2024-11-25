int sumEvenNumbers(List<int> numbers) {
  return numbers.where((n) => n % 2 == 0).reduce((a, b) => a + b);
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6];
  print("ผลรวมของเลขคู่คือ: ${sumEvenNumbers(nums)}");
}
