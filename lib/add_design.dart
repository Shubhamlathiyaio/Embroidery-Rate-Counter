import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/dashboard.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:embroidery_rate_counter/modules/stitch_module/stitch_model.dart';
import 'package:embroidery_rate_counter/widgets/extraField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_arrows_input_field.dart';
import 'package:embroidery_rate_counter/modules/rate_module/total_bottom_sheet.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';

class AddDesign extends ConsumerStatefulWidget {
  AddDesign({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends ConsumerState<AddDesign> {
  final Map<Items, TextEditingController> stitchControllers = {
    for (var e in Items.values) e: TextEditingController()
  };

  final Map<Items, TextEditingController> headControllers = {
    for (var e in kItems)
      e[Titles.name]: TextEditingController(text: "${e[Titles.head]}")
  };

  final TextEditingController stitchRateController =
      TextEditingController(text: "0.35");

  final TextEditingController addOnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.watch(rateCounterProvider.notifier).updateRateModel(cashAddDeign);
    print(".............................=Add Design build............");
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
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.save))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ExtraField(
                  text: "Stitch Rate :",
                  controller: stitchRateController,
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
                                allPadding: 8,
                                fontSize: 16,
                                data: 'Name',
                                fontWeight: FontWeight.bold,
                                color: AppColor.lightBlack)),
                        Expanded(
                            flex: 3,
                            child: CommonText(
                                allPadding: 8,
                                fontSize: 16,
                                data: 'Stitches',
                                fontWeight: FontWeight.bold,
                                color: AppColor.lightBlack)),
                        Expanded(
                            flex: 3,
                            child: CommonText(
                                allPadding: 8,
                                fontSize: 16,
                                data: 'Head',
                                fontWeight: FontWeight.bold,
                                color: AppColor.lightBlack)),
                        Expanded(
                            flex: 2,
                            child: CommonText(
                                allPadding: 8,
                                fontSize: 16,
                                data: 'Total',
                                fontWeight: FontWeight.bold,
                                color: AppColor.lightBlack)),
                      ],
                    ),
                    Consumer(builder: (context, ref, child) {
                      final stitches = ref.watch(rateCounterProvider).stitches;
                      return Column(
                        children: stitches.map((stitch) {
                          // Pass the appropriate controllers to StitchRow
                          return StitchRow(
                            rowKey: stitch.key,
                            stitchController: stitchControllers[stitch.key]!,
                            headController: headControllers[stitch.key]!,
                          );
                        }).toList(),
                      );
                    }),
                  ],
                ),
                const SizedBox(height: 16),
                ExtraField(
                  text: 'Add on Price :',
                  controller: addOnController,
                  onChanging: (rateConuter, value) =>
                      rateConuter.updateAddOnPrice(value),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        bottomNavigationBar: TotalBottomSheet());
  }
}

class StitchRow extends ConsumerWidget {
  final Items rowKey;
  final TextEditingController stitchController;
  final TextEditingController headController;

  const StitchRow(
      {required this.rowKey,
      required this.stitchController,
      required this.headController,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allDataProvider = ref.watch(rateCounterProvider);
    final dataNotifier = ref.watch(rateCounterProvider.notifier);

    final rowDataProvider = allDataProvider.stitches.firstWhere(
      (e) => e.key == rowKey,
      orElse: () => StitchModel.initial(rowKey),
    );
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CommonText(
            color: AppColor.darkPurple,
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
              controller: stitchController,
              value: "0.0",
              onChanging: (newValue) =>
                  dataNotifier.updateStitch(rowKey, newValue),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommonArrowsInputField(
              controller: headController,
              value: "0.0",
              onChanging: (newValue) =>
                  dataNotifier.updateHeads(rowKey, newValue),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: CommonText(
            allPadding: 8,
            data: (ref.watch(rateCounterProvider).stitchRate *
                    rowDataProvider.stitch *
                    rowDataProvider.head)
                .toStringAsFixed(2),
          ),
        ),
      ],
    );
  }
}
