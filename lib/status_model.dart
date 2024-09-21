class StatusModel {
  final String name;
  final String time;
  final String avatar;
  StatusModel({
    required this.name,
    required this.time,
    required this.avatar,
  });
}

List<StatusModel> statusData = [
  StatusModel(
    name: "Talal",
    time: "9:42",
    avatar: "images/bird.webp",
  ),
  StatusModel(
    name: "Nabeel",
    time: "10:14",
    avatar: "images/tree.jpg",
  ),
  StatusModel(
    name: "Bilal",
    time: "2:34",
    avatar: "images/bird.webp",
  ),
  StatusModel(
    name: "Hamza",
    time: "10:22",
    avatar: "images/tree.jpg",
  ),
  StatusModel(
    name: "Saad",
    time: "2:56",
    avatar: "images/tree.jpg",
  ),
  StatusModel(
    name: "khanjee",
    time: "10:00",
    avatar: "images/bird.webp",
  ),
  StatusModel(
    name: "Ali",
    time: "11:00",
    avatar: "images/tree.jpg",
  ),
  StatusModel(
    name: "fahad",
    time: "12:00",
    avatar: "images/bird.webp",
  ),
];
