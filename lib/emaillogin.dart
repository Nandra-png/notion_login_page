// lib/pages/email_login_page.dart
import 'package:flutter/material.dart';
import 'package:login_page/widgets/button.dart';
import 'package:login_page/widgets/inputDecoration.dart';
import 'package:login_page/widgets/text.dart';
import 'package:login_page/widgets/login_controller.dart';

class EmailLoginPage extends StatelessWidget {
  EmailLoginPage({super.key}) {
    _loginController = LoginController(_emailController);
  }

  final TextEditingController _emailController = TextEditingController();
  late final LoginController _loginController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF191919),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Go back',
          style: CustomText.appBarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              imagePath: 'assets/google_logo.png',
              text: "Continue with Google",
              onTap: () {},
            ),
            const SizedBox(height: 8),
            CustomButton(
              text: "Continue with Apple",
              onTap: () {},
            ),
            const SizedBox(height: 16),
            const Divider(color: Colors.grey),
            const SizedBox(height: 16),
            TextField(
              controller: _emailController,
              style: CustomText.textFieldStyle,
              decoration: Inputdecorations.emailInputDecoration,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF007AFF),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                onPressed: () => _loginController.handleLogin(context),
                child: const Text('Continue with email'),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Forgot password?',
                style: CustomText.dividerTextStyle,
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also continue with SAML SSO',
                style: CustomText.dividerTextStyle,
              ),
            ),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'By clicking "Continue with Apple/Google/Email/SAML" above, you acknowledge that you have read and understood, and agree to Notion\'s Terms & Conditions and Privacy Policy.',
                    style: CustomText.footerTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Privacy & terms       Need help?',
                    style: CustomText.footerTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    '© 2024 Notion Labs, Inc.',
                    style: CustomText.footerTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF191919),
    );
  }
}