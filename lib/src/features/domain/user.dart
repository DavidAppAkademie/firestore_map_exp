class User {
  String id;
  String name;
  int age;

  User({
    required this.id,
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "age": age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(id: map["id"], name: map["name"], age: map["age"]);
  }

  factory User.eigtheen(String id, String name) {
    return User(id: id, name: name, age: 18);
  }
}
