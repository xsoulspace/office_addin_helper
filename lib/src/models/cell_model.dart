// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class CellModel with _$CellModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory CellModel({
    required final int rowIndex,
    required final int columnIndex,
  }) = _CellModel;
  const CellModel._();

  factory CellModel.fromJson(final dynamic json) =>
      _$CellModelFromJson(json as Map<String, dynamic>);

  static const zero = CellModel(columnIndex: 0, rowIndex: 0);
}
