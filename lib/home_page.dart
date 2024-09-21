import 'package:firstappp/call_page.dart';
import 'package:firstappp/status_page.dart';
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
      icon: Icon(Icons.camera_alt_sharp),
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
          Text(
            'camera',
          ),
          ChatPage(),
          StatusPage(),
          CallPage()
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 4, 246, 129),
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('Open Chat'));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 4, 246, 129),
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () => print('Open Camera'));
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 4, 246, 129),
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: () => print('Open Call'));
    } else {
      return null;
    }
  }
}
