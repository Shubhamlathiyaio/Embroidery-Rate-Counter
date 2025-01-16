import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/rate_module/rate_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../stitch_module/stitch_model.dart';

part 'rate_counter_provider.g.dart';

@riverpod
class RateCounter extends _$RateCounter {
  @override
  RateModel build() => RateModel.initial();

  double get stitchRage => state.stitchRate;
  List<StitchModel> get stitches => state.stitches;
  double get addOnPrice => state.addOnPrice;
  double get totalPrice => [for (StitchModel e in stitches) e.stitch * e.head].fold(0.0,(sum, e) => sum + e);
  double get totalStitches => itemKeys.fold(0.0,(sum, e) => sum += state.stitches[e] as double);

// * methods

  void updateStitchesRate(String value) {
    if (double.tryParse(value) != null)
      state = state.copyWith(stitchRate: double.parse(value));
  }

  void updateAddOnPrice(String value) {
    if (double.tryParse(value) != null)
      state = state.copyWith(addOnPrice: double.parse(value));
  }

  void updateStitch(Items key, String value) {
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitchModel e in stitches)
          if (e.key == key) e.copyWith(stitch: double.parse(value))
        else e
      ]);
    }
  }

  void updateHeads(Items key, String value) {
    if (double.tryParse(value) != null) {
      state = state.copyWith(stitches: [
        for (StitchModel e in stitches)
          if (e.key == key) e.copyWith(head: double.parse(value))
          else e
      ]);
    }
  }
}
