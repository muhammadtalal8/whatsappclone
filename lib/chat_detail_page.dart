// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firstappp/message_page.dart';

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
                // ignore: duplicate_ignore
                // ignore: avoid_print
                print("video call button Clicked");
              },
              icon: const Icon(Icons.video_call)),
          IconButton(
              onPressed: () {
                // ignore: duplicate_ignore
                // ignore: avoid_print
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
      body: Column(
        children: [
          const Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                                color: Colors.red, width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0),
                        ),
                        hintText: 'Type a message'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
