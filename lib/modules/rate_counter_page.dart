import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class RateCounterPage extends StatefulWidget {
  const RateCounterPage({super.key});

  @override
  _RateCounterPageState createState() => _RateCounterPageState();
}

class _RateCounterPageState extends State<RateCounterPage> {
  final TextEditingController stitchRateController =
      TextEditingController(text: '0');
  final TextEditingController addOnController =
      TextEditingController(text: '0');

  final List<Map<dynamic, dynamic>> items = kItems;

  double calculateTotalPrice() {
    double stitchRate = double.tryParse(stitchRateController.text) ?? 0;
    double addOnPrice = double.tryParse(addOnController.text) ?? 0;

    double totalPrice = items.fold(0.0, (sum, item) {
      double stitches = item['stitches'] + .0;
      double head = item['head'] + .0;
      return sum + (stitches * head * stitchRate) / 100;
    });

    return totalPrice + addOnPrice;
  }

  Widget numberField(
      String label, double value, void Function(double) onChanged) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: Text(
            value.toStringAsFixed(1),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              child: const Icon(Icons.arrow_drop_up),
              onTap: () {
                onChanged(value + .1);
              },
            ),
            GestureDetector(
                child: const Icon(Icons.arrow_drop_down),
                onTap: () {
                  if (value > 0) onChanged(value - .1);
                }),
          ],
        ),
      ],
    );
  }

  // To add arrows to the text fields (Stitch Rate and Add-on Price)
  Widget arrowInputField(
      TextEditingController controller, void Function() onChanged) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (_) => setState(() {}),
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: Column(
            children: [
              GestureDetector(
                onTap: onChanged,
                child: const Icon(Icons.arrow_drop_up),
              ),
              GestureDetector(
                child: const Icon(Icons.arrow_drop_down),
                onTap: () {
                  setState(() {
                    double currentValue = double.tryParse(controller.text) ?? 0;
                    if (currentValue > 0) {
                      controller.text = (currentValue - 1).toStringAsFixed(1);
                    }
                  });
                },
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              arrowInputField(
                stitchRateController,
                () {
                  setState(() {
                    double currentValue =
                        double.tryParse(stitchRateController.text) ?? 0;
                    stitchRateController.text = (currentValue + 1).toString();
                  });
                },
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
                          child: Text(item[ItemKey.name]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: numberField(
                            'Stitches',
                            item['stitches'] + .0,
                            (newValue) {
                              setState(() {
                                item['stitches'] = newValue;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: numberField(
                            'Head',
                            item['head'] + .0,
                            (newValue) {
                              setState(() {
                                item['head'] = newValue;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '₹${((item['stitches'] * item['head'] * (double.tryParse(stitchRateController.text) ?? 0)) / 100).toStringAsFixed(2)}',
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
              arrowInputField(
                addOnController,
                () {
                  setState(() {
                    double currentValue =
                        double.tryParse(addOnController.text) ?? 0;
                    addOnController.text = (currentValue + 1).toString();
                  });
                },
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.blue,
                child: Text(
                  'Total Price: ₹${calculateTotalPrice().toStringAsFixed(2)}',
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
