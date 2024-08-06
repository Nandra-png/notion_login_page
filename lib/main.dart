import 'package:flutter/material.dart';
import 'package:login_page/homepage.dart';
import 'package:login_page/login.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const NotionLoginPage(), // Define the route for the login page
        '/home': (context) => const HomePage(), // Define the route for the home page
      },
    );
  }
}
