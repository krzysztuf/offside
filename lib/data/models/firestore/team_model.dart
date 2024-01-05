final class TeamModel {
  final String name;
  final String abbreviation;

  TeamModel(this.name, this.abbreviation);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'abbreviation': abbreviation,
    };
  }

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      json['name'] as String,
      json['abbreviation'] as String,
    );
  }
}
