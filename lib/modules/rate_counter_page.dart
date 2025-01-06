import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/comman_number_field.dart';
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
      appBar: AppBar(title: Text('Embroidery Rate Counter')),
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
              // arrowInputField(
              //   stitchRateController,
              //   () {
              //     setState(() {
              //       double currentValue =
              //           double.tryParse(stitchRateController.text) ?? 0;
              //       stitchRateController.text = (currentValue + 1).toString();
              //     });
              //   },
              // ),
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
                  const TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Enter Stitches',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Enter Head',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Total Price',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  ...items.map((item) {
                    return TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item[Titles.name].toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonNumberField(
                            label: 'Stitches',
                            value: item[Titles.stitch],
                            onChanged: (newValue) => ref
                                .read(rateCounterProvider.notifier)
                                .setStiches(item[Titles.name], newValue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonNumberField(
                            label: 'Head',
                            value: item[Titles.head],
                            onChanged: (newValue)  => ref
                                .read(rateCounterProvider.notifier)
                                .setStiches(item[Titles.name], newValue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '₹${((item[Titles.stitch] * item[Titles.head] * (double.tryParse(stitchRateController.text) ?? 0)) / 100).toStringAsFixed(2)}',
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
              // arrowInputField(
              //   addOnController,
              //   () {
              //     setState(() {
              //       double currentValue =
              //           double.tryParse(addOnController.text) ?? 0;
              //       addOnController.text = (currentValue + 1).toString();
              //     });
              //   },
              // ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.blue,
                child: Text(
                  "",
                  // 'Total Price: ₹${calculateTotalPrice().toStringAsFixed(2)}',
                  style: const TextStyle(
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
