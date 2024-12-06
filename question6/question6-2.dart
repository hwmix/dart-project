class Laptop {
  String? id;
  String? name;
  String? ram;

  Laptop(this.id, this.name, this.ram);

  @override
  String toString() {
    return 'id: $id, name: $name, ram: $ram';
  }
}

void main() {
  List<Laptop> laptops = [];
  laptops.add(Laptop('sn1234', 'Lenovo Thinkbook', '8GB'));
  laptops.add(Laptop('sn1235', 'Lenovo Thinkpad', '16GB'));
  laptops.add(Laptop('sn1236', 'Lenovo Ideapad', '4GB'));
  print(laptops[0]);
}
