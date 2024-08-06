import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final String? imagePath;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.imagePath,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFF191919),
          foregroundColor: Colors.white,
          side: const BorderSide(color: Color(0xFF393939)),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath!, height: 24),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      );
    } else if (icon != null) {
      return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFF191919),
          foregroundColor: Colors.white,
          side: const BorderSide(color: Color(0xFF393939)),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        icon: Icon(icon, color: Colors.white),
        label: Text(text),
        onPressed: onTap,
      );
    } else {
      throw ArgumentError('Either imagePath or icon must be provided.');
    }
  }
}
