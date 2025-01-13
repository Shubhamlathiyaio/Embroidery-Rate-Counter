import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/stitche_module/stitche_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_arrows_input_field.dart';
import 'package:embroidery_rate_counter/widgets/common_bottom_sheet_module/common_bottom_sheet.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';


class RateCounterPage extends StatelessWidget {
  late TextEditingController stitchRateController;
  late TextEditingController addOnPriceController;
  late Map<Items, TextEditingController> stitches = {};
  late Map<Items, TextEditingController> heads = {};



  @override
Widget build(BuildContext context) {
  // stitchRateController =
  //     TextEditingController(text: rateProvider.rawStitchRate);
  // addOnPriceController =
  //     TextEditingController(text: rateProvider.rawAddOnPrice);

  // for (Items key in itemKeys) {
  //   final stitch = rateProvider.stitches.firstWhere((e) => e.key == key);
  //   stitches[key] = TextEditingController(text: stitch.rawStitch);
  //   heads[key] = TextEditingController(text: stitch.rawHead);
  // }

  double screenWidth = MediaQuery.of(context).size.width;

  return Scaffold(
    backgroundColor: bgColor,
    appBar: AppBar(
      backgroundColor: darkPurpule,
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
            CommonText(
              data: 'Stitch Rate:',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: lightBlack,
            ),
            SizedBox(height: 8),
            Consumer(builder: (context, ref, child) {
              return
            CommonArrowsInputField(controller: TextEditingController(),
              value: ref.watch(rateCounterProvider).rawStitchRate,
              onChanging: (newValue) =>
                  ref.watch(rateCounterProvider.notifier).updateStitchesRate(newValue),
            );
            },),
            const SizedBox(height: 16),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CommonText(
                        allPadding: 8,
                        fontSize: 16,
                        data: 'Name',
                        fontWeight: FontWeight.bold,
                        color: lightBlack,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: CommonText(
                        allPadding: 8,
                        fontSize: 16,
                        data: 'Stitches',
                        fontWeight: FontWeight.bold,
                        color: lightBlack,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: CommonText(
                        allPadding: 8,
                        fontSize: 16,
                        data: 'Head',
                        fontWeight: FontWeight.bold,
                        color: lightBlack,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CommonText(
                        allPadding: 8,
                        fontSize: 16,
                        data: 'Total',
                        fontWeight: FontWeight.bold,
                        color: lightBlack,
                      ),
                    ),
                  ],
                ),
                StitchRow(rowKey:Items.cPallu),
        StitchRow(rowKey:Items.pallu),
        StitchRow(rowKey:Items.skt),
        StitchRow(rowKey:Items.blz),
                
//                 Consumer(
//   builder: (context, ref, child) {
//     final rateProvider = ref.watch(rateCounterProvider.notifier);

//     return Column(
//       children: [
        

//         // ...rateProvider.stitches.map((e) {
//         //   return StitchRow(rowKey:e.key);
//         // }),
//       ],
//     );
//   },
// ),

              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Add-on Price',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Consumer(builder: (context, ref, child) {
              return
            CommonArrowsInputField(controller: TextEditingController(),
              value: ref.watch(rateCounterProvider).rawAddOnPrice,
              onChanging: (newValue) =>
                  ref.watch(rateCounterProvider.notifier).updateAddOnPrice(newValue),
            );}),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ),
    bottomNavigationBar: CommonBottomSheet(),
  );
}

}
class StitchRow extends ConsumerWidget {
  final rowKey;
  StitchRow({required this.rowKey,super.key});

  @override
  Widget build(BuildContext context,  WidgetRef ref) {
    final allDataProvider = ref.watch(rateCounterProvider);
    final dataNotifire = ref.watch(rateCounterProvider.notifier);

    StitcheModel rowDataProvider = allDataProvider.stitches.firstWhere((e) => e.key == rowKey);
    return Row(
            children: [
              Expanded(
                flex: 2,
                child: CommonText(
                  color: darkPurpule,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  data: rowDataProvider.name,
                  allPadding: 8,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CommonArrowsInputField(
                    controller: TextEditingController(),
                    value: rowDataProvider.rawStitch,
                    onChanging: (newValue) =>
                        dataNotifire.updateStiches(rowKey, newValue),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CommonArrowsInputField(
                    controller: TextEditingController(),
                    value: rowDataProvider.rawHead,
                    onChanging: (newValue) =>
                        dataNotifire.updateHeads(rowKey, newValue),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: CommonText(
                  allPadding: 8,
                  data: (ref.watch(rateCounterProvider).stitchRate * rowDataProvider.stitch * rowDataProvider.head)
                      .toStringAsFixed(2),
                ),
              ),
            ],
          );
  }
}