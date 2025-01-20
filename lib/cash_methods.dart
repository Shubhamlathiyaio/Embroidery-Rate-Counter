// import 'dart:convert';
// import 'package:embroidery_rate_counter/dashboard.dart';
// import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';

// // late SharedPreferences prefs;
// // late RateModel cashCalculator;
// // late RateModel cashAddDeign;

// // enum PrefKey { calculateData, addDesignData }

// Future<void> storeInPref(String key, [RateModel? rateModel]) async {
//   RateModel calculateData = rateModel ??
//       RateModel
//           .initial(); //\?? ref.read(rateCounterProvider.notifier).getModel();
//   String calculateDataJson = json.encode(calculateData.toJson());
//   await prefs.setString(key, calculateDataJson);
// }

// // Future<void> getFromPref(String key) async {
// //   String? calculateDataJson = prefs.getString(key);
// //   if (calculateDataJson != null) {
// //     Map<String, dynamic> calculateDataMap = json.decode(calculateDataJson);
// //     cashCalculator = RateModel.fromJson(calculateDataMap);
// //     // ref.read(rateCounterProvider.notifier).updateRateModel(cashCalculator);
// //     // print("+++++++++++++++++++++++++++${ref.read(rateCounterProvider).stitches[0].stitch}");
// //   }
// // }

// // //! Core Code

// // Future<void> saveRateModel(RateModel rateModel) async {
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   String rateModelJson = json.encode(rateModel.toJson());
// //   await prefs.setString('rateData', rateModelJson);
// // }

// // Future<RateModel?> getRateModel() async {
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   String? rateModelJson = prefs.getString('rateData');

// //   if (rateModelJson != null) {
// //     Map<String, dynamic> rateModelMap = json.decode(rateModelJson);
// //     return RateModel.fromJson(rateModelMap);
// //   }
// //   return null;
// // }
