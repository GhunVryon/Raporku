import 'package:flutter/material.dart';
import 'package:rapor/login.dart';
import 'package:rapor/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),

      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const MyHomePage(),
      },
    );
  }
}
