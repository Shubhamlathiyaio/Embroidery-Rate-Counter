import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddDesign extends ConsumerWidget {
  const AddDesign({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var embroideryItems = [];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Embroidery Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(labelText: 'Design No:'),
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'Design Name:'),
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'Stitch Rate:'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: embroideryItems.length,
                  itemBuilder: (context, index) {
                    final item = embroideryItems[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item.name),
                          Text(item.stitches.toString()),
                          SizedBox(
                            width: 50,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                // final newHead =
                                //     double.tryParse(value) ?? item.head;
                                // ref
                                //     .read(embroideryProvider.notifier)
                                //     .updateHead(index, newHead);
                              },
                              decoration: InputDecoration(
                                hintText: item.head.toString(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text('Total Stitches: \$totalStitches'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Save action
                    },
                    child: const Text('SAVE'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Cancel action
                    },
                    child: const Text('CANCEL'),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
