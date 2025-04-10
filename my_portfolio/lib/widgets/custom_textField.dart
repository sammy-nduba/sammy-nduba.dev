import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.maxLines = 1,
    this.hintText,
    this.validator, // Added validator parameter
  });

  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;
  final String? Function(String?)? validator; // Define validator type

  @override
  Widget build(BuildContext context) {
    return TextFormField( // Change to TextFormField
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: const TextStyle(color: CustomColor.hintDark),
      ),
      validator: validator, // Pass validator to TextFormField
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}