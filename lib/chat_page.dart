import 'package:flutter/material.dart';
import 'package:firstappp/chat_detail_page.dart';
import 'package:firstappp/chat_models.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, i) => Column(
              children: [
                const Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(chatData[i].avatar),
                  ),
                  title: Text(
                    chatData[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    chatData[i].message,
                    style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  trailing: Text(chatData[i].time,
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 14.0)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatDetailPage()),
                    );
                  },
                )
              ],
            ));
  }
}
