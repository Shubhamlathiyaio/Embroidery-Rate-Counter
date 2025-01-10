import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Model for embroidery item
class EmbroideryItem {
  final String name;
  final int stitches;
  double head;

  EmbroideryItem({required this.name, required this.stitches, required this.head});
}

// StateNotifier to manage embroidery data
class EmbroideryNotifier extends StateNotifier<List<EmbroideryItem>> {
  EmbroideryNotifier()
      : super([
          EmbroideryItem(name: 'C-Pallu', stitches: 500000, head: 1.5),
          EmbroideryItem(name: 'Pallu', stitches: 500000, head: 7),
          EmbroideryItem(name: 'Skt', stitches: 500000, head: 11),
          EmbroideryItem(name: 'Blz', stitches: 500000, head: 1.5),
        ]);

  void updateHead(int index, double newHead) {
    state[index] = EmbroideryItem(
      name: state[index].name,
      stitches: state[index].stitches,
      head: newHead,
    );
    state = [...state];
  }

  int get totalStitches => state.fold(0, (sum, item) => sum + item.stitches);
}

// Provider for embroidery data
final embroideryProvider = StateNotifierProvider<EmbroideryNotifier, List<EmbroideryItem>>((ref) {
  return EmbroideryNotifier();
});

class EmbroideryCalculatorPage extends ConsumerWidget {
  const EmbroideryCalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final embroideryItems = ref.watch(embroideryProvider);
    final totalStitches = ref.watch(embroideryProvider.notifier).totalStitches;

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
                              final newHead = double.tryParse(value) ?? item.head;
                              ref.read(embroideryProvider.notifier).updateHead(index, newHead);
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
            Text('Total Stitches: $totalStitches'),
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
      ),
    );
  }
}