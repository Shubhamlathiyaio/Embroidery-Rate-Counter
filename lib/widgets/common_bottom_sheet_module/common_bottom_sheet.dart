import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonBottomSheet extends ConsumerWidget {
  const CommonBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final rateCounter = ref.watch(rateCounterProvider);
    return Container(
      color: darkWhite,
      height: height / 4,
      // width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(data: 'Total  Stitches'),
            CommonText(
              data: 'Total ₹ ${rateCounter.totalPrice.toStringAsFixed(2)}',
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
