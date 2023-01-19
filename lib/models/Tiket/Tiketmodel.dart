class TiketModel {
  final int event;
  final String name;
  final String email;
  final String phoneNumber;
  final String city;
  final String gender;
  const TiketModel(
      {
    required this.event,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.city,
    required this.gender,
  }
  );
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      "city":city,
      "gender":gender,
      "email":email,
      'event': event,
    };
  }
  @override
  String toString() {
    return 'Dog{id: $phoneNumber, name: $name, phoneNumber: $phoneNumber,city: $city,email:$email}';
  }
}
