void main() {
  for (int i = 1; i <= 9; i++) {
    print('ตารางสูตรคูณแม่ $i');
    for (int j = 1; j <= 12; j++) {
      print('$i x $j = ${i * j}');
    }
    print('');
  }
}
