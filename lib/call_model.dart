import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatar;
  final Icon calltype;
  CallModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.calltype,
  });
  static Icon callReceived = const Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = const Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.green,
  );
}

List<CallModel> callData = [
  CallModel(
    name: "Talal",
    calltype: CallModel.callReceived,
    time: "9:42",
    avatar: "images/bird.webp",
  ),
  CallModel(
    name: "Nabeel",
    time: "10:14",
    avatar: "images/tree.jpg",
    calltype: CallModel.callMissed,
  ),
  CallModel(
    name: "Bilal",
    calltype: CallModel.callReceived,
    time: "2:34",
    avatar: "images/bird.webp",
  ),
  CallModel(
    name: "Hamza",
    time: "10:22",
    avatar: "images/tree.jpg",
    calltype: CallModel.callMissed,
  ),
  CallModel(
    name: "Saad",
    calltype: CallModel.callMissed,
    time: "2:56",
    avatar: "images/tree.jpg",
  ),
  CallModel(
    name: "khanjee",
    calltype: CallModel.callReceived,
    time: "10:00",
    avatar: "images/bird.webp",
  ),
  CallModel(
    name: "Ali",
    calltype: CallModel.callMissed,
    time: "11:00",
    avatar: "images/tree.jpg",
  ),
  CallModel(
    name: "fahad",
    calltype: CallModel.callReceived,
    time: "12:00",
    avatar: "images/bird.webp",
  ),
];
