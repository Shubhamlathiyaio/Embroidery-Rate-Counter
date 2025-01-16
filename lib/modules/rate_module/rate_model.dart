import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:embroidery_rate_counter/modules/stitche_module/stitche_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_model.freezed.dart';
part 'rate_model.g.dart';

@freezed
class RateModel with _$RateModel {
  const factory RateModel({
    required String designName,
    required String rawStitchRate,
    required double stitchRate,
    required List<StitcheModel> stitches,
    required String rawAddOnPrice,
    required double addOnPrice,
    required String description,
  }) = _RateModel;
  factory RateModel.fromJson(Map<String, Object?> json) =>
      _$RateModelFromJson(json);

  // set totals => {for (var e in stitches) e.key: e.stitch * e.head};


  static RateModel initial() {
    return RateModel(
      designName: '',
      stitchRate: 0.35,
      rawStitchRate: '0.0',
      stitches: [
        StitcheModel.initial(Items.cPallu)
            .copyWith( name: "C Pallu", head: 12, rawHead: "12.0"),
        StitcheModel.initial(Items.pallu)
            .copyWith( name: "Pallu", head: 7, rawHead: "7.0"),
        StitcheModel.initial(Items.skt)
            .copyWith( name: "Skt", head: 11, rawHead: "11.0"),
        StitcheModel.initial(Items.blz)
            .copyWith( name: "Blz", head: 1.5, rawHead: "1.5"),
      ], // Default value with initial StitcheModel
      addOnPrice: 0.0,
      rawAddOnPrice: '0.0',
      description: '',
    );
  }
}
