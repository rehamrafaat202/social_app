class UserDataModel {
  String id;
  String name;
  String img;
  String city;
  String time;
  bool? isActive;
  List<String> imgs = [];
  UserDataModel(
      {required this.id,
      required this.city,
      required this.img,
      required this.imgs,
      required this.name,
      required this.time,
      this.isActive});
}

List<UserDataModel> userItem = [
  UserDataModel(
      id: "u1",
      city: "Toronto, Ontario",
      img: "assets/images/user1.png",
      imgs: [
        "assets/images/user1_1.png",
        "assets/images/user1_2.png",
        "assets/images/user1_1.png"
      ],
      name: "Georgia Bates",
      time: "5",
      isActive: true),
  UserDataModel(
      id: "u1",
      city: "Toronto, Ontario",
      img: "assets/images/user2.png",
      imgs: [
        "assets/images/user1_3.png",
        "assets/images/user1_1.png",
        "assets/images/user1_2.png"
      ],
      name: "Georgia Bates",
      time: "10",
      isActive: false),
  UserDataModel(
      id: "u1",
      city: "Toronto, Ontario",
      img: "assets/images/user1.png",
      imgs: [
        "assets/images/user1_1.png",
        "assets/images/user1_2.png",
        "assets/images/user1_3.png"
      ],
      name: "Georgia Bates",
      time: "5",
      isActive: true),
  UserDataModel(
      id: "u1",
      city: "Oakvill Ontario",
      img: "assets/images/user2.png",
      imgs: [
        "assets/images/user1_2.png",
        "assets/images/user1_1.png",
        "assets/images/user1_3.png"
      ],
      name: "Meagan Ryan",
      time: "2",
      isActive: true),
];
