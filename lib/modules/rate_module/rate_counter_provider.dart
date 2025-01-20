import 'dart:convert';

import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../stitch_module/stitch_model.dart';

part 'rate_counter_provider.g.dart';

@riverpod
class RateCounter extends _$RateCounter {
  @override
  RateModel build() => RateModel.initial();

  int get designNumber => state.designNumber;
  String get designName => state.designName;
  double get stitchRate => state.stitchRate;
  List<StitchModel> get stitches => state.stitches;
  double get addOnPrice => state.addOnPrice;

  // * methods

  RateModel getModel() => state;

  Future<void> saveRateModel() async {
    final prefs = await SharedPreferences.getInstance();
    final rateModelJson = jsonEncode(state.toJson());
    await prefs.setString('rate_model', rateModelJson);
  }

  Future<void> loadRateModel() async {
    final prefs = await SharedPreferences.getInstance();
    final rateModelJson = prefs.getString('rate_model');
    if (rateModelJson != null) {
      final loadedRateModel = RateModel.fromJson(jsonDecode(rateModelJson));
      state = loadedRateModel;
    } else {
      final newInitialization = jsonEncode(RateModel.initial());
      state = RateModel.fromJson(jsonDecode(newInitialization));
    }
  }

  Future<void> saveAddDesign() async {
    final prefs = await SharedPreferences.getInstance();
    final addDesignJson = jsonEncode(prefs.containsKey("add_design")
        ? state.toJson()
        : RateModel.initial().toJson());
    await prefs.setString('add_design', addDesignJson);
  }

  Future<void> loadAddDesign() async {
    final prefs = await SharedPreferences.getInstance();
    final addDesignJson = prefs.getString('add_design');
    if (addDesignJson != null) {
      final loadeAddDesignModel = RateModel.fromJson(jsonDecode(addDesignJson));
      state = loadeAddDesignModel;
    } else {
      final newInitialization = jsonEncode(RateModel.initial());
      state = RateModel.fromJson(jsonDecode(newInitialization));
    }
  }

  void updateRateModel(RateModel newRateModel) {
    state = state.copyWith(
      designName: newRateModel.designName,
      stitchRate: newRateModel.stitchRate,
      addOnPrice: newRateModel.addOnPrice,
      stitches: newRateModel.stitches,
    );
  }

void updateDesignNumber(String value) {
    if (value.isEmpty) value = "0";
    if (int.tryParse(value) != null) state = state.copyWith(designNumber: int.parse(value));
  }
  void updateDesignName(String value) {
    state = state.copyWith(designName: value);
  }

  void updateStitchesRate(String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) state = state.copyWith(stitchRate: double.parse(value));
  }

  void updateAddOnPrice(String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) state = state.copyWith(addOnPrice: double.parse(value));
  }

  void updateStitch(Items key, String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitchModel e in stitches)
          if (e.key == key) e.copyWith(stitch: double.parse(value)) else e
      ]);
    }
  }

  void updateHeads(Items key, String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitchModel e in stitches)
          if (e.key == key) e.copyWith(head: double.parse(value)) else e
      ]);
    }
  }
}
