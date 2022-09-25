class Person {
  String name;
  String lastName;
  String number;
  Person({
    required this.name,
    required this.lastName,
    required this.number,
  });
  String getName() {
    return '$name $lastName'.toUpperCase();
  }
}
