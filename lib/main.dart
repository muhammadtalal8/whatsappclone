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
      theme: ThemeData(
          primaryColor: const Color(
            0xff075e54,
          ),
          tabBarTheme: const TabBarTheme(
              labelColor: Colors.white, indicatorColor: Colors.white),
          bottomAppBarTheme: const BottomAppBarTheme(
              color: Colors.white,
              surfaceTintColor: Colors.white,
              shadowColor: Colors.white),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(
                0xFD013A1F,
              ),
              foregroundColor: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Whatsapp'),
    );
  }
}
