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
      addOnPrice: 0,
      
      );

  Map<dynamic, double> get totels => state.totals;
 
  Map<dynamic, double> getstitches(var valueKey) {
    Map<dynamic, double> map = {};
    for (Map<dynamic, dynamic> item in kItems) {
      dynamic name = item[ItemKey.name];
      double stitche = item[valueKey];
      map.addAll({name: stitche});
    }
    return map;
  }

  double calculateTotalPrice() {

    // for(var e in totels) totalprice+= 
    double totalPrice = items.fold(0.0, (sum, item) {
      double stitches = item['stitches'] + .0;
      double head = item['head'] + .0;
      return sum + (stitches * head * stitchRate) / 100;
    });

    return totalPrice + addOnPrice;
  }

}
