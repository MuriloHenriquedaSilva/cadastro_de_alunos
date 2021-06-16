class Student {
  int? registration;
  String? name;
  String? email;
  Student({
    this.registration,
    this.name,
    this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': registration,
      'name': name,
      'email': email,
    };
  }

  factory Student.fromMap(Map<dynamic, dynamic> map) {
    return Student(
      registration: map['registration'],
      name: map['name'],
      email: map['email'],
    );
  }
}
