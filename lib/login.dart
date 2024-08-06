import 'package:flutter/material.dart';
import 'package:login_page/emaillogin.dart';
import 'package:login_page/widgets/button.dart';
import 'package:login_page/widgets/text.dart';

class NotionLoginPage extends StatelessWidget {
  const NotionLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            // Logo
            Image.asset(
              'assets/logo.png',
              height: 50,
            ),
            const SizedBox(height: 20),
            Text(
              "Think it. Make it.",
              style: CustomText.title,
            ),
            const SizedBox(height: 10),
            Text(
              "Log in to your Notion account",
              style: CustomText.subtitle,
            ),
            const SizedBox(height: 40),
            // Main Image
            Center(
              child: Image.asset(
                'assets/main_image.png',
                height: 200,
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(
              imagePath: 'assets/google_logo.png',
              text: "Continue with Google",
              onTap: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.apple,
              text: "Continue with Apple",
              onTap: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.vpn_key,
              text: "Single sign-on (SSO)",
              onTap: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.email_outlined,
              text: "Continue with email",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmailLoginPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.grey),
            const SizedBox(height: 90),
            Text(
              "Your name and photo are displayed to users who invite you to a workspace using your email. By continuing, you acknowledge that you understand and agree to the Terms & Conditions and Privacy Policy.",
              style: CustomText.footer,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Privacy & terms",
                      style: CustomText.link,
                    ),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Need help?",
                      style: CustomText.link,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
