import 'package:flutter/material.dart';
import 'package:restaurant_app/app/utils/colors.dart';

class MyTextFormField extends StatelessWidget {
  final String? labelText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool enabled;
  // final String? Function(String?)? validator;

  MyTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    this.keyboardType,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        autofocus: true,
        controller: controller,
        keyboardType: keyboardType,
        enabled: enabled,
        decoration: InputDecoration(
          labelText: labelText!,
          labelStyle: const TextStyle(color: primaryclr),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: primaryclr),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: primaryclr),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: primaryclr),
          ),
        ),
      ),
    );
  }
}
