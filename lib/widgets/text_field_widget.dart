import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Color(0xFF2F2C44),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(icon),
          prefixIconColor: Colors.white24,
        ),
        obscureText: obscureText,
        validator: validator,
      ),
    );
  }
}
