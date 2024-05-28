import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obsecureText;

  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
    this.obsecureText = false,
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
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(icon),
            prefixIconColor: Colors.white),
        obscureText: obsecureText,
      ),
    );
  }
}
