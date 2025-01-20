import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/stitch_module/stitch_model.dart';
import 'package:flutter/material.dart';
import 'package:embroidery_rate_counter/widgets/common_arrows_input_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:embroidery_rate_counter/constans/colors_constans.dart';

class StitchRow extends ConsumerWidget {
  final Items stitchKey;
  TextEditingController? headController ;
  TextEditingController? stitchController;

  StitchRow({required this.stitchKey, required this.headController, required this.stitchController,super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stitch = ref.watch(rateCounterProvider).stitches.firstWhere(
        (stitch) => stitch.key == stitchKey,
        orElse: () => StitchModel.initial(stitchKey));
    final dataNotifier = ref.read(rateCounterProvider.notifier);

    return Row(
      children: [
       Expanded(
          flex: 2,
          child: CommonText(
            color: AppColor.darkPurple,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            data: itemsName[stitchKey]??"",
            allPadding: 8,
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommonArrowsInputField(
              controller: stitchController??TextEditingController(),
              value: "0.0",
              onChanging: (newValue) =>
                  dataNotifier.updateStitch(stitchKey, newValue),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommonArrowsInputField(
              controller: headController??TextEditingController(),
              value: "0.0",
              onChanging: (newValue) =>
                  dataNotifier.updateHeads(stitchKey, newValue),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: CommonText(
            allPadding: 8,
            data: (ref.watch(rateCounterProvider).stitchRate *
                    stitch.stitch *
                    stitch.head)
                .toStringAsFixed(2),
          ),
        ),
      ],
    );
  }
}
