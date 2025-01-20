import 'package:embroidery_rate_counter/add_design.dart';
import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/widgets/stitch_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:embroidery_rate_counter/widgets/extraField.dart';
import 'package:embroidery_rate_counter/widgets/total_bottom_sheet.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});

  final Map<Items, TextEditingController> stitchControllers = {
    for (var e in Items.values) e: TextEditingController()
  };

  final Map<Items, TextEditingController> headControllers = {
    for (var e in kItems)
      e[Titles.name]: TextEditingController(text: "${e[Titles.head]}")
  };

  TextEditingController stitchRateController =
      TextEditingController(text: "0.35");

  TextEditingController addOnController = TextEditingController();

// void getDataInFieald(final ref){
//   RateModel rate = ref.watch(rateCounterProvider);
//   stitchRateController = TextEditingController(text: "${rate.stitchRate}");
//   addOnController = TextEditingController(text: "${rate.addOnPrice}");
//   for(var e in rate.stitches){
//     stitchControllers[e.key] = TextEditingController(text: "${e.stitch}");
//     headControllers[e.key] = TextEditingController(text: "${e.head}");
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        backgroundColor: AppColor.bgColor,
        appBar: AppBar(
          backgroundColor: AppColor.darkPurple,
          centerTitle: true,
          title: CommonText(
            data: 'Embroidery Calculator',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ExtraFieldInRow(
                  controller: stitchRateController,
                  text: "Stitch Rate :",
                  onChanging: (rateConuter, value) =>
                      rateConuter.updateStitchesRate(value),
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: CommonText(
                                data: 'Name', fontWeight: FontWeight.bold)),
                        Expanded(
                            flex: 3,
                            child: CommonText(
                                data: 'Stitches', fontWeight: FontWeight.bold)),
                        Expanded(
                            flex: 3,
                            child: CommonText(
                                data: 'Head', fontWeight: FontWeight.bold)),
                        Expanded(
                            flex: 2,
                            child: CommonText(
                                data: 'Total', fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Consumer(builder: (context, ref, child) {
                      final stitches = ref.watch(rateCounterProvider).stitches;
                      return Column(
                        children: stitches.map((stitch) {
                          return StitchRow(
                            stitchKey: stitch.key,
                            headController: headControllers[stitch.key],
                            stitchController: stitchControllers[stitch.key],
                          );
                        }).toList(),
                      );
                    }),
                  ],
                ),
                const SizedBox(height: 16),
                ExtraFieldInRow(
                  controller: addOnController,
                  text: 'Add on Price :',
                  onChanging: (rateConuter, value) =>
                      rateConuter.updateAddOnPrice(value),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Consumer(
          builder: (context, ref, child) {
            final rate = ref.watch(rateCounterProvider);
            return TotalBottomSheet(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => AddDesign(),)),
              total: (rate.stitches.fold(
                          0.0,
                          (sum, e) =>
                              sum + (e.stitch * e.head * rate.stitchRate)) +
                      rate.addOnPrice)
                  .toStringAsFixed(2),
            );
          },
        ),
      );
    });
  }
}
