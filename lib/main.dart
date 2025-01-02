import 'package:embroidery_rate_counter/modules/rate_counter_module/rate_counter_page.dart';
import 'package:embroidery_rate_counter/widgets/text_filds/coman_text_fild.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EmbroideryRateCounter());
}

class EmbroideryRateCounter extends StatelessWidget {
  const EmbroideryRateCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Embroidery Rate Counter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ComanTextFild(),
      // home: const RateCounterPage(),
    );
  }
}