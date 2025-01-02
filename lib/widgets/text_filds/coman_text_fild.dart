import 'package:flutter/material.dart';

class ComanTextFild extends StatelessWidget {
  double allPadding;
  ComanTextFild({this.allPadding = 0, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(allPadding),
          child: TextField(),
        ),
      ),
    );
  }
}
