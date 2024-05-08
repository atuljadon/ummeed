import 'package:flutter/material.dart ';

class TextFormGobal extends StatelessWidget {
  const TextFormGobal(
      {super.key,
      required this.controller,
      required this.Text,
      required this.textInputType,
      required this.obscure});
  final TextEditingController controller;
  final String Text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: Text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: TextStyle(
            height: 1,
          ),
        ),
      ),
    );
  }
}
