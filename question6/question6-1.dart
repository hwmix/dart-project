// สร้างคลาส Laptop
class Laptop {
  int id; // รหัสของ Laptop
  String name; // ชื่อของ Laptop
  int ram; // ขนาด RAM ของ Laptop (หน่วยเป็น GB)

  // Constructor สำหรับคลาส Laptop
  Laptop(this.id, this.name, this.ram);

  // เมธอดสำหรับแสดงรายละเอียดของ Laptop
  void displayDetails() {
    print('ID: $id, Name: $name, RAM: ${ram}GB');
  }
}

void main() {
  // สร้างออบเจกต์ของคลาส Laptop
  Laptop laptop1 = Laptop(1, 'Dell Inspiron', 8);
  Laptop laptop2 = Laptop(2, 'HP Pavilion', 16);
  Laptop laptop3 = Laptop(3, 'MacBook Pro', 32);

  // แสดงรายละเอียดของ Laptop ทุกเครื่อง
  laptop1.displayDetails();
  laptop2.displayDetails();
  laptop3.displayDetails();
}
