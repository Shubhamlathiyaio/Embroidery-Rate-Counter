import 'package:embroidery_rate_counter/add_design.dart';
import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/main.dart';
import 'package:embroidery_rate_counter/widgets/common_button.dart';
import 'package:embroidery_rate_counter/widgets/stitch_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:embroidery_rate_counter/constans/colors_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_counter_provider.dart';
import 'package:embroidery_rate_counter/widgets/common_text.dart';
import 'package:embroidery_rate_counter/widgets/extraField.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Map<Items, TextEditingController> stitchControllers = {
    for (var e in Items.values) e: TextEditingController()
  };

  final Map<Items, TextEditingController> headControllers = {
    for (var e in kItems)
      e[Titles.name]: TextEditingController(text: "${e[Titles.head]}")
  };

  TextEditingController stitchRateController =
      TextEditingController(text: "0.35");

  TextEditingController addOnController = TextEditingController();

@override
  void initState() {
  super.initState();
     getDataInFieald();
  }
void getDataInFieald(){
  stitchRateController = TextEditingController(text: "${currentModelData.stitchRate==0.0?"":currentModelData.stitchRate}");
  addOnController = TextEditingController(text: "${currentModelData.addOnPrice==0.0?"":currentModelData.addOnPrice}");
  for(var e in currentModelData.stitches){
    stitchControllers[e.key] = TextEditingController(text: "${e.stitch==0.0?"":e.stitch}");
    headControllers[e.key] = TextEditingController(text: "${e.head==0.0?"":e.head}");
  }
}
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double minSide = width > height ? height : width;
    return Consumer(builder: (consumerContext, ref, child) {
      // ref.read(rateCounterProvider.notifier).loadRateModel();
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
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ExtraFieldInRow(
                  controller: stitchRateController,
                  text: "Stitch Rate :",
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
                                data: 'Name', fontWeight: FontWeight.bold)),
                        Expanded(
                            flex: 3,
                            child: CommonText(
                                data: 'Stitches', fontWeight: FontWeight.bold)),
                        Expanded(
                            flex: 3,
                            child: CommonText(
                                data: 'Head', fontWeight: FontWeight.bold)),
                        Expanded(
                            flex: 2,
                            child: CommonText(
                                data: 'Total', fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Consumer(builder: (context, ref, child) {
                      final stitches = ref.watch(rateCounterProvider).stitches;
                      return Column(
                        children: stitches.map((stitch) {
                          return StitchRow(
                            stitchKey: stitch.key,
                            headController: headControllers[stitch.key],
                            stitchController: stitchControllers[stitch.key],
                          );
                        }).toList(),
                      );
                    }),
                  ],
                ),
                const SizedBox(height: 16),
                ExtraFieldInRow(
                  controller: addOnController,
                  text: 'Add on Price :',
                  onChanging: (rateConuter, value) =>
                      rateConuter.updateAddOnPrice(value),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
            color: AppColor.darkWhite,
            height: height * .19,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: height*.02,),
                  CommonText(
                    data: 'Total  Stitches',
                    fontSize: 12,
                    color: AppColor.fontBlack,
                  ),
                  Consumer(
                    builder: (con, ref, child) {
                      final rate = ref.watch(rateCounterProvider);
                      return Expanded(
                        child: CommonText(
                          color: AppColor.fontBlack,
                          data:
                              '₹ ${(rate.stitches.fold(0.0, (sum, e) => sum + (e.stitch * e.head * rate.stitchRate)) + rate.addOnPrice).toStringAsFixed(2)}',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddDesign(),));},
                    child: CommonButton(
                        radius: 12,
                        fontSize: 14,
                        height: 55,
                        width: double.infinity,
                        bottomPadding: 10,
                        text: 'Save',
                        color: AppColor.darkPurple,
                        fontColor: Colors.white),
                  )
                ],
              ),
            )),
      );
    });
  }
}
