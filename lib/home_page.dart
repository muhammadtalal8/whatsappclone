import 'package:flutter/material.dart';
import 'package:firstappp/chat_page.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.camera_alt),
    ),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(
      text: 'CALLS',
    )
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("search button clicked");
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Three Dot Button Clicked");
                },
                icon: const Icon(Icons.more_vert))
          ],
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.red,
              tabs: topTabs),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Text('camera'),
            ChatPage(),
            Text('Status'),
            Text('Call'),
          ],
        ));
  }
}
