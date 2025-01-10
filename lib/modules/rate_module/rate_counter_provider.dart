import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rate_counter_provider.g.dart';

@riverpod
class RateCounter extends _$RateCounter {
  @override
  RateModel build() => RateModel(
    name: "Demo",
        description: "demo description",
        stitchRate: 8.5,
        stitches: getstitches(Titles.stitch),
        heads: getstitches(Titles.head),
        addOnPrice: 0,
      );
  Map<dynamic, double> getstitches(var valueKey) {
    Map<dynamic, double> map = {};
    for (Map<Titles, dynamic> item in kItems) {
      dynamic name = item[Titles.name];

      double stitche = item[valueKey];
      map.addAll({name: stitche});
    }
    return map;
  }

  double get stitchRage => state.stitchRate;
  Map<dynamic, double> get stitches => state.stitches;
  Map<dynamic, double> get heads => state.heads;
  Map<dynamic, double> get totals => state.totals;
  double get addOnPrice => state.addOnPrice;
  double get totalPrice => state.totalPrice;

// * methods

  void updateStichesRate(double newValue) {
    state = state.copyWith(stitchRate: newValue);
    debugPrint('Updated Add-On Price: $newValue');
  }

  void updateAddOnPrice(double newValue) {
    state = state.copyWith(addOnPrice: newValue);
  }

  void updateStiches(Items key, double newValue) {
    state = state.copyWith(
      stitches: Map.of(state.stitches)..[key] = newValue,
    );
  }

  void updateHeads(Items key, double newValue) {
    state = state.copyWith(
      heads: Map.of(state.heads)..[key] = newValue,
    );
  }
}
