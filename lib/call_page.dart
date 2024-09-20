import 'package:firstappp/call_model.dart';
import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
              children: [
                const Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(callData[i].avatar),
                  ),
                  title: Text(
                    callData[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text(
                  //   // callData[i].message,
                  //   style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  // ),
                  trailing: (Icon(
                    Icons.call,
                    size: 25,
                    color: Theme.of(context).primaryColor,
                  )),
                  onTap: () {
                    print('Call Detail Open');
                  },
                )
              ],
            ));
  }
}
