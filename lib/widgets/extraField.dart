import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_arrows_input_field.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:embroidery_rate_counter/widgets/common_text_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExtraFieldInRow extends StatelessWidget {
  String text;
  TextEditingController controller;
  Function(RateCounter, String) onChanging;
  ExtraFieldInRow(
      {required this.text,
      required this.controller,
      required this.onChanging,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CommonText(
            data: text,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.lightBlack,
          ),
        ),
        SizedBox(width: 8),
        Consumer(builder: (context, ref, child) {
          return Expanded(
            flex: 3,
            child: CommonArrowsInputField(
              controller: controller,
              value: "0.0",
              onChanging: (newValue) {
                onChanging(ref.watch(rateCounterProvider.notifier), newValue);
              },
            ),
          );
        }),
      ],
    );
  }
}

class ExtraFieldInColumn extends StatelessWidget {
  String text;
  String value;
  TextInputType textInputType;
  TextEditingController controller;
  Function(RateCounter, String) onChanging;
  ExtraFieldInColumn(
      {required this.text,
      required this.value,
      this.textInputType = TextInputType.number,
      required this.controller,
      required this.onChanging,
      super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: CommonText(
              data: text,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColor.lightBlack,
            ),
          ),
          SizedBox(height: 8),
          Consumer(builder: (context, ref, child) {
            return Expanded(
              flex: 3,
              child: CommonTextTextField(
                textInputType: textInputType,
                controller: controller,
                value: value,
                onChanging: (newValue) {
                  onChanging(ref.watch(rateCounterProvider.notifier), newValue);
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
