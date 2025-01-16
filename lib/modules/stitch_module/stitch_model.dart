import 'package:embroidery_rate_counter/constans/rate_constans.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stitch_model.freezed.dart';
part 'stitch_model.g.dart';

@freezed
class StitchModel with _$StitchModel {
  const factory StitchModel({
    required Items key,
    required String name,
    required double stitch,
    required double head,
  }) = _StitchModel;

  factory StitchModel.fromJson(Map<String, Object?> json) =>
      _$StitchModelFromJson(json);

  static StitchModel initial(Items key) {
    return StitchModel(
      key: key, // Example default
      name: '',
      stitch: 0.0,
      head: 0.0,
    );
  }
}
