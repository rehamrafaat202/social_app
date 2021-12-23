class StoriesModel {
  String img;
  String name;
  StoriesModel({required this.name, required this.img});
}

List<StoriesModel> story = [
  StoriesModel(name: "James McL...", img: "assets/images/s1.png"),
  StoriesModel(name: "Bessie Sima...", img: "assets/images/s2.png"),
  StoriesModel(name: "Jeffery Hall", img: "assets/images/s3.png"),
  StoriesModel(name: "Judy Adler", img: "assets/images/s4.png"),
];
