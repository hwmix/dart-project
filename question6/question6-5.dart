// สร้างคลาส Camera
class Camera {
  // Properties แบบ private (ขึ้นต้นด้วย _)
  int _id;
  String _brand;
  String _color;
  double _price;

  // Constructor สำหรับคลาส Camera
  Camera(this._id, this._brand, this._color, this._price);

  // Getter และ Setter สำหรับ id
  int get id => _id;
  set id(int value) => _id = value;

  // Getter และ Setter สำหรับ brand
  String get brand => _brand;
  set brand(String value) => _brand = value;

  // Getter และ Setter สำหรับ color
  String get color => _color;
  set color(String value) => _color = value;

  // Getter และ Setter สำหรับ price
  double get price => _price;
  set price(double value) => _price = value;

  // เมธอดสำหรับแสดงรายละเอียดของ Camera
  void displayDetails() {
    print(
        'ID: $_id, Brand: $_brand, Color: $_color, Price: \$${_price.toStringAsFixed(2)}');
  }
}

void main() {
  // สร้างออบเจกต์ของคลาส Camera
  Camera camera1 = Camera(1, 'Canon', 'Black', 1500.00);
  Camera camera2 = Camera(2, 'Nikon', 'Silver', 1200.50);
  Camera camera3 = Camera(3, 'Sony', 'White', 1800.75);

  // ปรับค่าบางอย่างด้วย setter
  camera1.price = 1400.00; // ลดราคา Camera ตัวที่ 1
  camera2.color = 'Black'; // เปลี่ยนสีของ Camera ตัวที่ 2

  // แสดงรายละเอียดของ Camera ทุกเครื่อง
  print('Details of all cameras:');
  camera1.displayDetails();
  camera2.displayDetails();
  camera3.displayDetails();
}
