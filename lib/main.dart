import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_page.dart';
import 'package:embroidery_rate_counter/product_grid_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: EmbroideryRateCounter()));
}

class EmbroideryRateCounter extends StatelessWidget {
  const EmbroideryRateCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Embroidery Rate Counter',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: ComanTextFild(),
      // home: const RateCounterPage(),
      home: const ProductGridPage(),
    );
  }
}
