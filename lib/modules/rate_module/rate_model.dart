import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../stitch_module/stitch_model.dart';

part 'rate_model.freezed.dart';
part 'rate_model.g.dart';

@freezed
class RateModel with _$RateModel {
  const factory RateModel({
    required int designNumber,
    required String designName,
    required double stitchRate,
    required List<StitchModel> stitches,
    required double addOnPrice,
    required String description,
  }) = _RateModel;
  factory RateModel.fromJson(Map<String, Object?> json) =>
      _$RateModelFromJson(json);

  // set totals => {for (var e in stitches) e.key: e.stitch * e.head};


  static RateModel initial() {
    return RateModel(
      designNumber: 0,
      designName: '',
      stitchRate: 0.35,
      stitches: [
        StitchModel.initial(Items.cPallu)
            .copyWith( name: "C Pallu", head: 12),
        StitchModel.initial(Items.pallu)
            .copyWith( name: "Pallu", head: 7),
        StitchModel.initial(Items.skt)
            .copyWith( name: "Skt", head: 11),
        StitchModel.initial(Items.blz)
            .copyWith( name: "Blz", head: 1.5),
      ], // Default value with initial StitcheModel
      addOnPrice: 0.0,
      description: '',
    );
  }
}
