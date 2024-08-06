import 'package:flutter/material.dart';
import 'package:login_page/widgets/text.dart';


class Inputdecorations {
  static InputDecoration emailInputDecoration = InputDecoration(
    filled: true,
    fillColor: const Color(0xFF262626),
    hintText: 'Enter your email address...',
    hintStyle: CustomText.hintStyle,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(9)),
      borderSide: BorderSide(color: const Color(0xFF393939)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(9)),
      borderSide: BorderSide(color: Colors.blue),
    ),
  );
}
