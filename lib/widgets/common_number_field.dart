import 'package:flutter/material.dart';

class CommonNumberField extends StatelessWidget {
  double value;
  Function(double) onChanged;
  CommonNumberField({required this.value, required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child:
            //  Row(
            //   children: [
            SizedBox(
          width: 40,
          child: Text(
            value.toStringAsFixed(1),
            textAlign: TextAlign.center,
          ),
        ),
        // const Spacer(),
        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     GestureDetector(
        //       child: const Icon(Icons.arrow_drop_up),
        //       onTap: () =>
        //         onChanged(value + .1)
        //       ,
        //     ),
        //     GestureDetector(
        //         child: const Icon(Icons.arrow_drop_down),
        //         onTap: () {
        //           if (value > 0) onChanged(value - .1);
        //         }),
        //   ],
        // ),
        //   ],
        // ),
      ),
    );
  }
}

// Widget NumberField(
//     String label, double value, void Function(double) onChanged) {
//   return Row(
//     children: [
//       SizedBox(
//         width: 40,
//         child: Text(
//           value.toStringAsFixed(1),
//           textAlign: TextAlign.center,
//         ),
//       ),
//       const Spacer(),
//       Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           GestureDetector(
//             child: const Icon(Icons.arrow_drop_up),
//             onTap: () {
//               onChanged(value + .1);
//             },
//           ),
//           GestureDetector(
//               child: const Icon(Icons.arrow_drop_down),
//               onTap: () {
//                 if (value > 0) onChanged(value - .1);
//               }),
//         ],
//       ),
//     ],
//   );
// }
