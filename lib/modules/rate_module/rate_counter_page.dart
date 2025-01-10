import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_arrows_input_field.dart';
import 'package:embroidery_rate_counter/widgets/common_bottom_sheet_module/common_bottom_sheet.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RateCounterPage extends ConsumerWidget {
  const RateCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateCounterData = ref.watch(rateCounterProvider);

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
              CommonArrowsInputField.CommonArrowsInputField(
                value: rateCounterData.stitchRate,
                onChanging: (newValue) => ref
                    .read(rateCounterProvider.notifier)
                    .updateStichesRate(newValue),
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
                  ...itemKeys.map((e) {
                    return Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CommonText(
                            color: darkPurpule,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            data: itemsName[e].toString(),
                            allPadding: 8,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                CommonArrowsInputField.CommonArrowsInputField(
                              width: screenWidth / 6,
                              value:
                                  ref.watch(rateCounterProvider).stitches[e] ??
                                      0,
                              onChanging: (newValue) => ref
                                  .read(rateCounterProvider.notifier)
                                  .updateStiches(e, newValue),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                CommonArrowsInputField.CommonArrowsInputField(
                              width: screenWidth / 6,
                              value:
                                  ref.watch(rateCounterProvider).heads[e] ?? 0,
                              onChanging: (newValue) => ref
                                  .read(rateCounterProvider.notifier)
                                  .updateHeads(e, newValue),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: CommonText(
                            allPadding: 8,
                            data: ref
                                .watch(rateCounterProvider)
                                .totals[e]!
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
              CommonArrowsInputField.CommonArrowsInputField(
                value: rateCounterData.addOnPrice,
                onChanging: (newValue) => ref
                    .read(rateCounterProvider.notifier)
                    .updateAddOnPrice(newValue),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CommonBottomSheet(),
    );
  }
}
