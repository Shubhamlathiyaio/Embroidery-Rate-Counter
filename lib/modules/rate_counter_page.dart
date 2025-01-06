import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/comman_arrows_input_field.dart';
import 'package:embroidery_rate_counter/widgets/comman_number_field.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class RateCounterPage extends ConsumerWidget {
  const RateCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateCounterData = ref.watch(rateCounterProvider);

    final TextEditingController stitchRateController =
        TextEditingController(text: '0');
    final TextEditingController addOnController =
        TextEditingController(text: '0');

    final List<Map<Titles, dynamic>> items = kItems;
    return Scaffold(
      appBar: AppBar(title: const Text('Embroidery Rate Counter')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Enter Stitch Rate',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              CommanArrowsInputField(
                value: rateCounterData.stitchRate,
                onChanged: (newValue) => ref
                    .read(rateCounterProvider.notifier)
                    .updateStichesRate(newValue),
              ),
              const SizedBox(height: 16),
              Table(
                border: TableBorder.all(color: Colors.black26),
                columnWidths: const {
                  0: FractionColumnWidth(0.2),
                  1: FractionColumnWidth(0.3),
                  2: FractionColumnWidth(0.3),
                  3: FractionColumnWidth(0.2),
                },
                children: [
                  TableRow(
                    children: [
                      CommonText(data: 'Name', fontWeight: FontWeight.bold),
                      CommonText(
                          data: 'Enter Stitches', fontWeight: FontWeight.bold),
                      CommonText(
                          data: 'Enter Head', fontWeight: FontWeight.bold),
                      CommonText(
                          data: 'Total Price', fontWeight: FontWeight.bold),
                    ],
                  ),
                  ...itemKeys.map((e) {
                    return TableRow(
                      children: [
                        CommonText(
                          data: itemsName[e].toString(),
                          allPadding: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonNumberField(
                            value:
                                ref.watch(rateCounterProvider).stitches[e] ?? 0,
                            onChanged: (newValue) => ref
                                .read(rateCounterProvider.notifier)
                                .updateStiches(e, newValue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonNumberField(
                            value: ref.watch(rateCounterProvider).heads[e] ?? 0,
                            onChanged: (newValue) => ref
                                .read(rateCounterProvider.notifier)
                                .updateHeads(e, newValue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '₹ ${ref.watch(rateCounterProvider).totals[e]!.toStringAsFixed(2)}',
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
              CommanArrowsInputField(
                value: rateCounterData.addOnPrice,
                onChanged: (newValue) => ref
                    .read(rateCounterProvider.notifier)
                    .updateAddOnPrice(newValue),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.blue,
                child: const Text(
                  "",
                  // 'Total Price: ₹${calculateTotalPrice().toStringAsFixed(2)}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
