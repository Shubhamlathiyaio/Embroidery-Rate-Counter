import 'package:flutter/material.dart';

class CommonNumberField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;

  CommonNumberField({
    required this.controller,
    required this.hintText,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
      ),
      keyboardType: TextInputType.number,
    );
  }
}
