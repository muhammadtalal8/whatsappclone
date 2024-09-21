class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(
      name: "Talal",
      message: "Hello",
      time: "9:42",
      avatar: "images/bird.webp"),
  ChatModel(
      name: "Nabeel", message: "Hi", time: "10:14", avatar: "images/tree.jpg"),
  ChatModel(
    name: "Bilal",
    message: 'bye',
    time: "2:34",
    avatar: "images/bird.webp",
  ),
  ChatModel(
    name: "Hamza",
    time: "10:22",
    avatar: "images/tree.jpg",
    message: 'how are you',
  ),
  ChatModel(
    name: "Saad",
    message: 'Hi',
    time: "2:56",
    avatar: "images/tree.jpg",
  ),
  ChatModel(
    name: "khanjee",
    message: 'what',
    time: "10:00",
    avatar: "images/bird.webp",
  ),
  ChatModel(
    name: "Ali",
    message: '?',
    time: "11:00",
    avatar: "images/tree.jpg",
  ),
  ChatModel(
    name: "fahad",
    message: 'Bye',
    time: "12:00",
    avatar: "images/bird.webp",
  ),
];
