import 'dart:convert';
import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/dashboard.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefsInit();
  runApp(ProviderScope(child: EmbroideryRateCounter()));
}
RateModel currentModelData = getRateModel();
late SharedPreferences prefs;
Future<void> prefsInit() async {
  prefs = await SharedPreferences.getInstance();
  print("${CashKey.calculate} = ${prefs.containsKey(CashKey.calculate)}");
  print("${CashKey.addDesign} = ${prefs.containsKey(CashKey.addDesign)}");
}

Future<void> saveRateModel(RateModel rateModel) async {
  String rateModelJson = json.encode(rateModel.toJson());
  await prefs.setString(currentCashKey, rateModelJson);
}

RateModel getRateModel() {
  String? rateModelJson = prefs.getString(currentCashKey);
  
  if (rateModelJson != null) {
    Map<String, dynamic> rateModelMap = json.decode(rateModelJson);
    return RateModel.fromJson(rateModelMap);
  }
  else {
    return RateModel.initial();
  }
}


class EmbroideryRateCounter extends StatelessWidget {
  const EmbroideryRateCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Embroidery Rate Counter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Dashboard(),
      // home: RateCounterPage(),
    );
  }
}
