import 'package:flutter/material.dart';

import '../constans/colors_constans.dart';

class CommonArrowsInputField extends StatelessWidget {
  final TextEditingController controller;
  final String value;
  final Function(String) onChanging;

  CommonArrowsInputField({
    required this.controller,
    required this.value,
    required this.onChanging,
    Key? key,
  }) : super(key: key);

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
      keyboardType: TextInputType.number,
    );
  }
}
