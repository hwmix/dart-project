void main() {
  Map<String, String> phoneBook = {
    'John': '123-456-789',
    'Daves': '456-789-123',
    'Wilson': '7891',
    'Johnson': '789-123-456',
  };
  print("original phoneBooke = $phoneBook");
  phoneBook
      .removeWhere((key, value) => !(key.length == 4 || value.length == 4));
  print("filterd phoneBooke = $phoneBook");
}
