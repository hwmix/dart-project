void main() {
  List<String> friends = [];
  friends.addAll(["John", "Dave", "Wilson", "Jobs", "Steav", "Adam", "Ava"]);

  List<String> friendsA =
      friends.where((name) => name.startsWith('A')).toList();
  print(friendsA);
}
