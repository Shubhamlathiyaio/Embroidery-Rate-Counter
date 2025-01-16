import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/modules/stitch_module/stitch_model.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TotalBottomSheet extends ConsumerWidget {
  const TotalBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final rateProvider = ref.watch(rateCounterProvider);
    return Container(
      color: AppColor.darkWhite,
      height: height / 4,
      // width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(data: 'Total  Stitches',fontSize: 12, color: AppColor.fontBlack,),
            Consumer(builder: (context, ref, child) {

              final rate = ref.watch(rateCounterProvider);
              final total = ref.watch(rateCounterProvider);
            return CommonText(color: AppColor.fontBlack,
              data:
              'Total ₹ ${([for (StitchModel e in rate.stitches) e.stitch * e.head].fold(
              0.0,
                  (sum, e) => sum + e,
            )+rate.addOnPrice).toStringAsFixed(2)}',
              fontSize: 32,
              fontWeight: FontWeight.bold,
            );})
            ,
          ],
        ),
      ),
    );
  }
}
