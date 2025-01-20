import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_arrows_input_field.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExtraField extends StatelessWidget {
  String text;
  TextEditingController controller;
  Function(dynamic, String) onChanging;
  ExtraField(
      {required this.text,
      required this.controller,
      required this.onChanging,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2,
          child: CommonText(
            data: 'Add on price:',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.lightBlack,
          ),
        ),
        SizedBox(width: 8),
        Expanded(flex: 3,
          child: Consumer(builder: (context, ref, child) {
            return CommonArrowsInputField(
                controller: controller,
                value: "0.0",
                onChanging: (newValue) {
                  var rateModel = ref.watch(rateCounterProvider.notifier);
                  onChanging(rateModel,newValue);
                });
          }),
        )
      ],
    );
  }
}
