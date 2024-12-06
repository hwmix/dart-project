class Animal {
  String? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);

  @override
  String toString() {
    return 'id: $id, name: $name, color: $color';
  }
}

class Cat extends Animal {
  String? sound;

  Cat(super.id, super.name, super.color, this.sound);

  @override
  String toString() {
    return super.toString() + ', sound: $sound';
  }
}

void main() {
  Cat cat1 = Cat('1', 'Tom', 'Black', 'Meow');
  print(cat1);
}
