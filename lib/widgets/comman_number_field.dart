import 'package:embroidery_rate_counter/modules/rate_counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonNumberField extends StatelessWidget {
  String label;
  double value;
  Function(double) onChanged;
  CommonNumberField(
      {required this.label, required this.value, required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: Text(
            value.toStringAsFixed(1),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              child: const Icon(Icons.arrow_drop_up),
              onTap: () =>
                onChanged(value + .1)
              ,
            ),
            GestureDetector(
                child: const Icon(Icons.arrow_drop_down),
                onTap: () {
                  if (value > 0) onChanged(value - .1);
                }),
          ],
        ),
      ],
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
