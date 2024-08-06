// lib/main.dart
import 'package:flutter/material.dart';
import 'package:login_page/emaillogin.dart';
import 'package:login_page/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => EmailLoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
