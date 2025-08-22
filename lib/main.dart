import 'package:calculator/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),   // light mode
      darkTheme:ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black, // body background
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, // AppBar background
          elevation: 0, // optional, removes shadow
        ),
      ),
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
