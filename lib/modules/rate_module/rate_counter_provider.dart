import 'dart:convert';
import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/main.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    final rateModelJson = jsonEncode(state.toJson());
    await prefs.setString(currentCashKey, rateModelJson);
  }

  RateModel loadRateModel()  {
    final rateModelJson = prefs.getString(currentCashKey);
    if (rateModelJson != null) {
      final loadedRateModel = RateModel.fromJson(jsonDecode(rateModelJson));
      state = loadedRateModel;
    } else {
      final newInitialization = jsonEncode(RateModel.initial());
      state = RateModel.fromJson(jsonDecode(newInitialization));
    }
    return state;
  }

  void updateRateModel(RateModel newRateModel) {
    state = state.copyWith(
      designName: newRateModel.designName,
      stitchRate: newRateModel.stitchRate,
      addOnPrice: newRateModel.addOnPrice,
      stitches: newRateModel.stitches,
    );
    saveRateModel();
  }

void updateDesignNumber(String value) {
    if (value.isEmpty) value = "0";
    if (int.tryParse(value) != null) state = state.copyWith(designNumber: int.parse(value));
  saveRateModel();
  }
  void updateDesignName(String value) {
    state = state.copyWith(designName: value);
  saveRateModel();
  }

  void updateStitchesRate(String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) state = state.copyWith(stitchRate: double.parse(value));
    saveRateModel();
  }

  void updateAddOnPrice(String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) state = state.copyWith(addOnPrice: double.parse(value));
    saveRateModel();
  }

  void updateStitch(Items key, String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitchModel e in stitches)
          if (e.key == key) e.copyWith(stitch: double.parse(value)) else e
      ]);
    }
    saveRateModel();
  }

  void updateHeads(Items key, String value) {
    if (value.isEmpty) value = "0.0";
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitchModel e in stitches)
          if (e.key == key) e.copyWith(head: double.parse(value)) else e
      ]);
    }
    saveRateModel();
  }
}
