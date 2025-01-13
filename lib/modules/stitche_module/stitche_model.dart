import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stitche_model.freezed.dart';
part 'stitche_model.g.dart';

@freezed
class StitcheModel with _$StitcheModel {
  const factory StitcheModel({
    required Items key,
    required String name,
    required double stitch,
    required double head,
    required String rawStitch,
    required String rawHead,
  }) = _StitcheModel;

  factory StitcheModel.fromJson(Map<String, Object?> json) =>
      _$StitcheModelFromJson(json);

  static StitcheModel initial() {
    return StitcheModel(
      key: Items.cPallu, // Example default
      name: '',
      stitch: 0.0,
      head: 0.0,
      rawStitch: '0.0',
      rawHead: '0.0',
    );
  }
}
