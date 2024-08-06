import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController emailController;

  LoginController(this.emailController);

  void handleLogin(BuildContext context) {
    final email = emailController.text;
    
    if (email == 'rendra@gmail.com') {
      Navigator.pushNamed(context, '/home'); 
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email address')),
      );
    }
  }
}
