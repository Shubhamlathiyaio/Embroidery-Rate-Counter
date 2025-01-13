import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_arrows_input_field.dart';
import 'package:embroidery_rate_counter/widgets/common_bottom_sheet_module/common_bottom_sheet.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';

class RateCounterPage extends ConsumerStatefulWidget {
  const RateCounterPage({super.key});

  @override
  _RateCounterPageState createState() => _RateCounterPageState();
}

class _RateCounterPageState extends ConsumerState<RateCounterPage> {
  late TextEditingController stitchRateController;
  late TextEditingController addOnPriceController;
  late Map<Items, TextEditingController> stitches = {};
  late Map<Items, TextEditingController> heads = {};

  @override
void initState() {
  super.initState();
  final rateProvider = ref.read(rateCounterProvider);

  stitchRateController =
      TextEditingController(text: rateProvider.rawStitchRate);
  addOnPriceController =
      TextEditingController(text: rateProvider.rawAddOnPrice);

  for (Items key in itemKeys) {
    final stitch = rateProvider.stitches.firstWhere((e) => e.key == key);
    stitches[key] = TextEditingController(text: stitch.rawStitch);
    heads[key] = TextEditingController(text: stitch.rawHead);
  }
}

@override
void didUpdateWidget(covariant RateCounterPage oldWidget) {
  super.didUpdateWidget(oldWidget);

  final rateProvider = ref.read(rateCounterProvider);

  stitchRateController.text = rateProvider.rawStitchRate;
  addOnPriceController.text = rateProvider.rawAddOnPrice;

  for (Items key in itemKeys) {
    final stitch = rateProvider.stitches.firstWhere((e) => e.key == key);
    stitches[key]?.text = stitch.rawStitch;
    heads[key]?.text = stitch.rawHead;
  }
}


  @override
Widget build(BuildContext context) {
  final rateProvider = ref.watch(rateCounterProvider);
  final rateNotifier = ref.read(rateCounterProvider.notifier);

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
            CommonArrowsInputField(controller: TextEditingController(),
              value: rateProvider.rawStitchRate,
              onChanging: (newValue) =>
                  rateNotifier.updateStitchesRate(newValue),
            ),
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
                ...rateProvider.stitches.map((e) {
                  return Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CommonText(
                          color: darkPurpule,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          data: e.name.toString(),
                          allPadding: 8,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonArrowsInputField(
                            controller: TextEditingController(),value: e.rawStitch,
                            onChanging: (newValue) =>
                                rateNotifier.updateStiches(e.key, newValue),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonArrowsInputField(
                            controller: TextEditingController(),value: e.rawHead,
                            onChanging: (newValue) =>
                                rateNotifier.updateHeads(e.key, newValue),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: CommonText(
                          allPadding: 8,
                          data: (rateProvider.stitchRate * e.stitch * e.head)
                              .toStringAsFixed(2),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Add-on Price',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            CommonArrowsInputField(controller: TextEditingController(),
              value: rateProvider.rawAddOnPrice,
              onChanging: (newValue) =>
                  rateNotifier.updateAddOnPrice(newValue),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ),
    bottomNavigationBar: CommonBottomSheet(),
  );
}


@override
void dispose() {
  stitchRateController.dispose();
  addOnPriceController.dispose();
  for (var controller in stitches.values) {
    controller.dispose();
  }
  for (var controller in heads.values) {
    controller.dispose();
  }
  super.dispose();
}


}
