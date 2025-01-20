import 'package:freezed_annotation/freezed_annotation.dart';

part 'stitche_model.freezed.dart';
part 'stitche_model.g.dart';

@freezed
class StitcheModel with _$StitcheModel {
  const factory StitcheModel({
    required String name,
    required double stitch,
    required double head,
  }) = _StitcheModel;

  factory StitcheModel.fromJson(Map<String, Object?> json) =>
      _$StitcheModelFromJson(json);

  static StitcheModel initial() {
    return StitcheModel(
      name: '',
      stitch: 0.0,
      head: 0.0,
    );
  }
}
