import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TotalBottomSheet extends StatelessWidget {
  const TotalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: AppColor.darkWhite,
      height: height / 6,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              data: 'Total  Stitches',
              fontSize: 12,
              color: AppColor.fontBlack,
            ),
            Consumer(builder: (context, ref, child) {
              final rate = ref.watch(rateCounterProvider.notifier);
              return Expanded(
                child: CommonText(
                  color: AppColor.fontBlack,
                  data: 'Total ₹ ${rate.getTotalAsString()}',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
