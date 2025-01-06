import 'package:flutter/material.dart';

class CommanArrowsInputField extends StatelessWidget {
  double value;
  Function onChanged;
  CommanArrowsInputField(
      {required this.value, required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: height / 14,
          width: 350,
          child: TextField(
            controller: TextEditingController(text: value.toStringAsFixed(1)),
            keyboardType: TextInputType.number,
            onChanged: (v) {
              String temp = "";
              if (v[v.length] == '.') {
                temp = v.substring(0, v.length - 1);
                onChanged(double.parse(temp));
              } else {
                onChanged(double.parse(v));
              }
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                onChanged(value + .1);
              },
              child: const Icon(Icons.arrow_drop_up),
            ),
            GestureDetector(
              child: const Icon(Icons.arrow_drop_down),
              onTap: () {
                if (value > .1)
                  onChanged(value - .1);
                else
                  onChanged(0.0);
              },
            ),
          ],
        )
      ],
    );
  }
}


// Widget arrowInputField(
//       TextEditingController controller, void Function() onChanged) {
//     return TextField(
//       controller: controller,
//       keyboardType: TextInputType.number,
      // onChanged: (_) => setState(() {}),
//       decoration: InputDecoration(
//           border: const OutlineInputBorder(),
//           suffixIcon: Column(
//             children: [
//               GestureDetector(
//                 onTap: onChanged,
//                 child: const Icon(Icons.arrow_drop_up),
//               ),
//               GestureDetector(
//                 child: const Icon(Icons.arrow_drop_down),
//                 onTap: () {
//                     double currentValue = double.tryParse(controller.text) ?? 0;
//                     if (currentValue > 0) {
//                       controller.text = (currentValue - 1).toStringAsFixed(1);
//                     }
//                 },
//               ),
//             ],
//           )),
//     );
//   }