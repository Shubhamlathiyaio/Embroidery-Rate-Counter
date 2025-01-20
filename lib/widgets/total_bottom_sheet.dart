import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/widgets/common_button.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';

class TotalBottomSheet extends StatelessWidget {
  final String total;
  Function onTap;
  TotalBottomSheet({required this.total, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: AppColor.darkWhite,
      height: height * .22,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .03,
            ),
            CommonText(
              data: 'Total  Stitches',
              fontSize: 12,
              color: AppColor.fontBlack,
            ),
            Expanded(
              child: CommonText(
                color: AppColor.fontBlack,
                data:
                    "₹$total", //'Total ₹ ${rate.stitches.fold(0.0, (sum, e) => sum + (e.stitch * e.head * rate.stitchRate)) + rate.addOnPrice}',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            CommonButton(
              radius: 12,
              fontSize: 14,
              height: 55,
              width: double.infinity,
              bottomPadding: 10,
              text: 'Save',
              color: AppColor.darkPurple,
              fontColor: Colors.white,
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
