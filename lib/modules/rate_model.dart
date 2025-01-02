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

  factory RateModel.fromJson(Map<String, Object?> json) =>
      _$RateModelFromJson(json);
}
