import 'package:firstappp/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WHATSAPP',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 1, 58, 31)),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Whatsapp'),
    );
  }
}
