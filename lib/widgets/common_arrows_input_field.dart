import 'package:flutter/material.dart';

class CommonArrowsInputField extends StatefulWidget {
  final Function(String) onChanging;
  final String value;
  final double width;
  final TextEditingController controller; // Use controller as a parameter

  CommonArrowsInputField({
    required this.value,
    required this.controller,
    this.width = 0,
    required this.onChanging,
    super.key,
  });

  @override
  _CommonArrowsInputFieldState createState() => _CommonArrowsInputFieldState();
}

class _CommonArrowsInputFieldState extends State<CommonArrowsInputField> {
  @override
  void initState() {
    super.initState();
    // Update the controller's text when the widget is first built
    widget.controller.text = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return
        // Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // children: [
        SizedBox(
      height: height / 16,
      width: width == 0 ? 379 : width,
      child: TextField(
        textAlign: TextAlign.center,
        controller: widget.controller,
        keyboardType: TextInputType.number,
        // onChanged: (value) {
        //   print(value);
        //   widget.onChanging(value);  // Pass the updated value
        // },
        onEditingComplete: () => widget.onChanging,
        onSubmitted: (value) => widget.onChanging,
        onTapOutside: (event) => widget.onChanging,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200], // Use the correct color constant
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
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
//   }
// }
