import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:embroidery_rate_counter/modules/stitche_module/stitche_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rate_counter_provider.g.dart';

@riverpod
class RateCounter extends _$RateCounter {
  @override
  RateModel build() => RateModel.initial();

  double get stitchRage => state.stitchRate;
  String get rawStitchRate => state.rawStitchRate;
  List<StitcheModel> get stitches => state.stitches;
  // Map<Items, double> get totals =>{for (var e in state.stitches) e.key: e.stitch * e.head};
  double get addOnPrice => state.addOnPrice;
  String get rawAddOnPrice => state.rawAddOnPrice;
  double get totalPrice =>
      [for (StitcheModel e in stitches) e.stitch * e.head].fold(
        0.0,
        (sum, e) => sum + e,
      );
  double get totalStitches => itemKeys.fold(
        0.0,
        (sum, e) => sum += state.stitches[e] as double,
      );

/*

// for all totales
  Map<Items, double> get totals => {
        for (var key in itemKeys)
          key: (stitchRate * (stitches[key] ?? 0.0) * (heads[key] ?? 0.0)) / 100
      };

// for final total
  double get totalPrice => totals.values.fold(0.0, (sum, value) => sum + value);

  factory RateModel.fromJson(Map<String, Object?> json) =>
      _$RateModelFromJson(json);

*/

// * methods

  void updateStitchesRate(String value) {
    state = state.copyWith(rawStitchRate: value);
    print(double.tryParse(value));
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitchRate: double.parse(value));
      print(state.stitchRate);
    }
  }

  void updateAddOnPrice(String value) {
    state = state.copyWith(rawAddOnPrice: value);
    if (double.tryParse(value) != null) {
      state = state.copyWith(addOnPrice: double.parse(value));
      print(state.addOnPrice);
    }
  }

  void updateStiches(Items key, String value) {
    state = state.copyWith(stitches: [
      for (StitcheModel e in stitches)
        if (e.key == key) e.copyWith(rawStitch: value)
    ]);
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitcheModel e in stitches)
          if (e.key == key) e.copyWith(stitch: double.parse(value))
      ]);
      print(state.stitches);
    }
  }

  void updateHeads(Items key, String value) {
    state = state.copyWith(stitches: [
      for (StitcheModel e in stitches)
        if (e.key == key) e.copyWith(rawHead: value)
    ]);
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitcheModel e in stitches)
          if (e.key == key) e.copyWith(head: double.parse(value))
      ]);
      print(state.stitches);
    }
  }
}
