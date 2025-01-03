import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_model.freezed.dart';
part 'rate_model.g.dart';

@freezed
class RateModel with _$RateModel {
  const factory RateModel({
    required double stitchRate,
    required Map<dynamic, double> stitches,
    required Map<dynamic, double> heads,
    required double addOnPrice,
  }) = _RateModel;

 const RateModel._();

Map<dynamic, double> get totals => {
        for (var key in nameKeys) key : (stitchRate * (stitches[key] ?? 0.0) * (heads[key] ?? 0.0))/100
      };

  factory RateModel.fromJson(Map<String, Object?> json) =>
      _$RateModelFromJson(json);
}
