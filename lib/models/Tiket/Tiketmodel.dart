class TiketModel {
<<<<<<< HEAD
  final String name;
  final String image;
  final String gender;
  const TiketModel(
      {
        required this.name,
        required this.image,
        required this.gender,
  }
  );
  Map<String, dynamic> toMap() {
    return{
      'name' : name,
      "gender" : gender,
      "image" : image,
=======
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
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
    };
  }
  @override
  String toString() {
<<<<<<< HEAD
    return 'Tiket{name: $name, image:$image, gender:$gender,}';
=======
    return 'Dog{id: $phoneNumber, name: $name, phoneNumber: $phoneNumber,city: $city,email:$email}';
>>>>>>> 13bb8ca4347b53ea5847def815602b36dbce3003
  }
}
