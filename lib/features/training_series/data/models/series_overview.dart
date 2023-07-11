class SeriesOverViewModel {
  SeriesOverViewModel({
    required this.image,
   required this.name,
   required this.coachName,
   required this.description,
   required this.video,

  });

  String image;
  String name;
  String coachName;
  String description;
  String video;

  factory SeriesOverViewModel.fromJson(Map<String, dynamic> json) => SeriesOverViewModel(
    image: json["image"],
    name: json["name"],
    coachName: json["coach_name"],
    description: json["description"],
    video: json["video"],

  );
}


