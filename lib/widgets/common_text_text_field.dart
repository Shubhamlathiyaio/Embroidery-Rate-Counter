import 'package:flutter/material.dart';

import '../constans/colors_constans.dart';

class CommonTextTextField extends StatelessWidget {
  final TextEditingController controller;
  final String value;
  final TextInputType textInputType;
  final Function(String) onChanging;

  const CommonTextTextField({
    required this.controller,
    required this.value,
    this.textInputType = TextInputType.number,
    required this.onChanging,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanging,
      decoration: InputDecoration(
        fillColor: AppColor.fieldGrey,
        filled: true,
        border: OutlineInputBorder(),
        hintText: value,
      ),
      keyboardType: textInputType,
    );
  }
}
