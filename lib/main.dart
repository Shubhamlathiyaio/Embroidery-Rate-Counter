import 'dart:convert';
import 'package:embroidery_rate_counter/dashboard.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ProviderScope(child: EmbroideryRateCounter()));
}

Future<void> saveRateModel(RateModel rateModel) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String rateModelJson = json.encode(rateModel.toJson());
  await prefs.setString('rateData', rateModelJson);
}

Future<RateModel?> getRateModel() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? rateModelJson = prefs.getString('rateData');
  
  if (rateModelJson != null) {
    Map<String, dynamic> rateModelMap = json.decode(rateModelJson);
    return RateModel.fromJson(rateModelMap);
  }
  return null;
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
