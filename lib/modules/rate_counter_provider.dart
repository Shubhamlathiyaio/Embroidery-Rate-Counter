import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rate_counter_provider.g.dart';

@riverpod
class RateCounter extends _$RateCounter {
  @override
  RateModel build() => RateModel(
      stitchRate: 0,
      stitches: getstitches(ItemKey.stitch),
      heads: getstitches(ItemKey.head),
      addOnPrice: 0);

  Map<dynamic, double> get totals => {
        for (var key in nameKeys) key : (state.stitchRate * (state.stitches[key] ?? 0.0) * (state.heads[key] ?? 0.0))/100
      };
  // double get finalTotal => {
  //   for
  // }

  Map<dynamic, double> getstitches(var valueKey) {
    Map<dynamic, double> map = {};
    for (Map<dynamic, dynamic> item in kItems) {
      dynamic name = item[ItemKey.name];
      double stitche = item[valueKey];
      map.addAll({name: stitche});
    }
    return map;
  }
}
