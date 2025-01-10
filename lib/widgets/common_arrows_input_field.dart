import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:flutter/material.dart';

class CommonArrowsInputField extends StatelessWidget {
  Function(double) onChanging;

  double value;
  double width;
  CommonArrowsInputField.CommonArrowsInputField(
      {required this.value,
      this.width = 0,
      required this.onChanging,
      super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TextEditingController controller = TextEditingController();
    return
        // Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // children: [
        SizedBox(
      height: height / 14,
      width: width == 0 ? 379 : width, //350,
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          List nums = [for (int i = 0; i < 9; i++) '$i'];
          List other = [];
          for (String c in value.split("")) if (!nums.contains(c)) other.add(c);
          if (other.length == 0 || (other.length == 1 && other.contains('.'))) {
            onChanging(double.parse(value));
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: fildGrey,
          border: OutlineInputBorder(),
        ),
      ),
    );
    // Column(
    //   children: [
    //     GestureDetector(
    //       onTap: () {
    //         onChanged(value + .1);
    //       },
    //       child: const Icon(Icons.arrow_drop_up),
    //     ),
    //     GestureDetector(
    //       child: const Icon(Icons.arrow_drop_down),
    //       onTap: () {
    //         if (value > .1)
    //           onChanged(value - .1);
    //         else
    //           onChanged(0.0);
    //       },
    //     ),
    //   ],
    // )
    //   ],
    // );
  }
}
