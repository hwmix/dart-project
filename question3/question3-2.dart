bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  int num = 8;
  print("ตัวเลข $num เป็นเลขคู่หรือไม่: ${isEven(num)}");
}
