class SavedModel {
  final String name;
  final String image;
  final String gender;
  final String link;
  const SavedModel(
      {
        required this.name,
        required this.image,
        required this.gender,
        required this.link,
      }
      );
  Map<String, dynamic> toMap() {
    return{
      'name' : name,
      "gender" : gender,
      "image" : image,
      "link" : link,
    };
  }
  @override
  String toString() {
    return 'Saved{name: $name, image:$image, gender:$gender,link:$link}';
  }
}
