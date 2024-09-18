// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/bird-8788491_1280.webp'),
              radius: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text('Talal'),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("video call button Clicked");
              },
              icon: const Icon(Icons.video_call)),
          IconButton(
              onPressed: () {
                print("call button Clicked");
              },
              icon: const Icon(Icons.call)),
          IconButton(
              onPressed: () {
                print("Three Dot button Clicked");
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
