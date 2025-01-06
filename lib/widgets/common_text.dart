// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  String data;
  Key? textKey;
  double allPadding;
  double? topPadding;
  double? bottomPadding;
  double? leftPadding;
  double? rightPadding;
  Locale? locale;
  int? maxLines;
  TextOverflow? overflow;
  Color? selectionColor;
  bool softWrap;
  FontWeight? fontWeight;
  double fontSize;
  Color? backgroundColor;
  Color? color;
  TextDecoration decoration;
  Color? decorationColor;
  TextDecorationStyle decorationStyle;
  double? decorationThickness;
  String? fontFamily;
  FontStyle? fontStyle; //*FontStyle.italic
  double? lineSpacing; //? lineSpacing = height
  double? letterSpacing;
  double? wordSpacing;
  TextLeadingDistribution? leadingDistribution;
  TextBaseline? textBaseline;
  List<Shadow>? shadows;
  TextStyle style;
  TextAlign? textAlign;
  TextDirection? textDirection;
  TextHeightBehavior? textHeightBehavior;
  double? textScaleFactor;
  TextScaler? textScaler;
  TextWidthBasis? textWidthBasis;
  CommonText({
    this.data = "",
    super.key,
    this.allPadding = 8,
    this.topPadding,
    this.bottomPadding,
    this.leftPadding,
    this.rightPadding,
    this.textKey,
    this.locale,
    this.maxLines,
    this.overflow = TextOverflow.clip,
    this.selectionColor,
    this.softWrap = true,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
    this.backgroundColor,
    this.color,
    this.decoration = TextDecoration.none,
    this.decorationColor,
    this.decorationStyle = TextDecorationStyle.solid,
    this.decorationThickness,
    this.fontFamily,
    this.fontStyle,
    this.lineSpacing, //? lineSpacing = height
    this.letterSpacing,
    this.wordSpacing,
    this.leadingDistribution,
    this.textBaseline,
    this.shadows,
    this.style = const TextStyle(),
    this.textAlign,
    this.textDirection,
    this.textHeightBehavior,
    this.textScaleFactor,
    this.textScaler,
    this.textWidthBasis,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.only(
          top: topPadding ?? allPadding ?? 0,
          bottom: bottomPadding ?? allPadding ?? 0,
          left: leftPadding ?? allPadding ?? 0,
          right: rightPadding ?? allPadding ?? 0),
      child: Text(
        data,
        // "This is the Data for Make base code 10 of Text Widget.",
        key: textKey,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        selectionColor: selectionColor,
        semanticsLabel: "hello",
        softWrap: softWrap,
        strutStyle: StrutStyle(
          height: lineSpacing ?? 0,
        ), // Line height as a multiplier
        style: TextStyle(
          // background: ,
          // backgroundColor: null,
          // color: Colors.black,
          // decoration: TextDecoration.none,
          // decorationColor: Colors.black,
          // decorationStyle: TextDecorationStyle.solid,
          // decorationThickness: null,
          // fontFamily: ,
          // fontFamilyFallback: , if some fontFamily is not work so we can give it the List fontFabmily
          // fontFeatures: ,  unknown
          fontSize: fontSize,
          // fontStyle: FontStyle.normal,
          //   fontVariations: [
          //   FontVariation('wght', 700), // Set weight to 700 (bold)       // It is use for some text styeles
          //   FontVariation('wdth', 75),  // Set width to 75% (condensed)   // https://www.youtube.com/watch?v=vwSlP7zCtxA&t=357s
          // ],
          fontWeight: fontWeight,
          foreground: Paint(),
          //* inherit: true, // we doesn't need it It is alow to inherit new style if is it true [Defalut : true]
          // leadingDistribution: TextLeadingDistribution.proportional,
          // shadows: [
          //   Shadow(
          //     offset: Offset(4.0, 4.0), // Position of shadow
          //     blurRadius: 10.0, // Blurring effect
          //     color: Colors.grey, // Shadow color
          //   ),
          // ],
          // textBaseline: TextBaseline.alphabetic,
          // height: null, //? lineSpacing = height
          // wordSpacing: null,
          // letterSpacing: null,
        ),

        textAlign: textAlign,
        textDirection: textDirection,
        textHeightBehavior: textHeightBehavior,
        textScaleFactor: textScaleFactor,
        textScaler: textScaler,
        textWidthBasis: textWidthBasis,
      ),
    ));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue // Set the color of the shape
      ..style = PaintingStyle.fill // Set style to fill (other option: stroke)
      ..strokeWidth = 5.0; // Set stroke width (if style is stroke)

    // Draw a circle
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
