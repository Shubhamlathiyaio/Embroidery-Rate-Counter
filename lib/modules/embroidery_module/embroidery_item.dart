import 'package:freezed_annotation/freezed_annotation.dart';

part 'embroidery_item.freezed.dart';
part 'embroidery_item.g.dart';

@freezed
class EmbroideryItem with _$EmbroideryItem {
  const factory EmbroideryItem({
    final String name,
    final int stitches,
    double head,
  }) = _EmbroideryItem;

  const EmbroideryItem._();
  factory EmbroideryItem.fromJson(Map<String, Object?> json) =>
      _$EmbroideryItemlFromJson(json);
}
