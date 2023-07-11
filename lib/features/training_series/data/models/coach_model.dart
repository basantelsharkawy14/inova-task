class CoachModel {
  CoachModel({
    required this.image,
    required this.name,
    required this.coachName,
    required this.description,
    required this.intensity,
    required this.difficulty

  });

  String image;
  String name;
  String coachName;
  String description;
  String intensity;
  String difficulty;

  factory CoachModel.fromJson(Map<String, dynamic> json) => CoachModel(
    image: json["image"],
    name: json["name"],
    coachName: json["coach_name"],
    description: json["description"],
    difficulty: json["difficulty"],
    intensity: json["intensity"],

  );
}


