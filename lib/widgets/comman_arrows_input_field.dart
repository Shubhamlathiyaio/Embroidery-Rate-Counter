import 'package:flutter/material.dart';

Widget arrowInputField(
      TextEditingController controller, void Function() onChanged) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      // onChanged: (_) => setState(() {}),
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: Column(
            children: [
              GestureDetector(
                onTap: onChanged,
                child: const Icon(Icons.arrow_drop_up),
              ),
              GestureDetector(
                child: const Icon(Icons.arrow_drop_down),
                onTap: () {
                    double currentValue = double.tryParse(controller.text) ?? 0;
                    if (currentValue > 0) {
                      controller.text = (currentValue - 1).toStringAsFixed(1);
                    }
                },
              ),
            ],
          )),
    );
  }