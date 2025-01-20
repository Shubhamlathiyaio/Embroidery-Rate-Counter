import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  String text;
  Color color;
  Function onTap;
  double height;
  double width;
  double outPadding;
  double radius;
  double fontSize;
  Color fontColor;
  double topPadding;
  double bottomPadding;
  double leftPadding;
  double rightPadding;
  
  CommonButton(
      {this.text = "Click",
      this.color = Colors.blue,
      required this.onTap,
      this.height = 60,
      this.width = 200,
      this.radius = 200,
      this.outPadding = 0,
      this.topPadding = 0,
      this.bottomPadding = 0,
      this.leftPadding = 0,
      this.rightPadding = 0,
      this.fontSize = 24,
      this.fontColor = Colors.black,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPadding ?? outPadding,
          bottom: bottomPadding ?? outPadding,
          left: leftPadding ?? outPadding,
          right: rightPadding ?? outPadding,
      ),
      child: GestureDetector(onTap: () => onTap,
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(radius)),
          child: CommonText(
            data: text,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
            color :fontColor
          ),
        ),
      ),
    );
  }
}
