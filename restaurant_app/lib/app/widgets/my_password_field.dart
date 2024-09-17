
import 'package:flutter/material.dart';
import 'package:restaurant_app/app/utils/colors.dart';

class MyPasswordField extends StatefulWidget {
  final String? labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  MyPasswordField({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
  });

  @override
  _MyPasswordFieldState createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        autofocus: true,
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.labelText!,
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
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: primaryclr,
            ),
          ),
        ),
        obscureText: _obscureText,
        validator: widget.validator,
      ),
    );
  }
}