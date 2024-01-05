class UserModel {
  final String name;
  final String surname;
  final String? image;

  UserModel(this.name, this.surname, this.image);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'image': image,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json['name'] as String,
      json['surname'] as String,
      json['image'] as String?,
    );
  }
}
