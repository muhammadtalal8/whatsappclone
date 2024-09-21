// ignore_for_file: avoid_print

import 'package:firstappp/status_model.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.blueGrey,
          ),
          title: const Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Tap to add status Update',
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
          onTap: () {
            print('My own status Detail Open');
          },
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('Recent updates',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Flexible(
            child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(statusData[i].avatar),
                ),
                title: Text(
                  statusData[i].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  statusData[i].time,
                  style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                onTap: () {
                  print('Status Detail Open');
                },
              ),
              const Divider(
                height: 10.0,
              )
            ],
          ),
        ))
      ],
    );
  }
}
