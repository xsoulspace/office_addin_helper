part of 'models.dart';

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
  unionValueCase: FreezedUnionCase.pascal,
)
class SheetModel<TWorksheet> with _$SheetModel<TWorksheet> {
  const factory SheetModel.mockSheetModel({
    required final int position,
    required final String name,
    required final String id,
  }) = MockSheetModel<TWorksheet>;
  const factory SheetModel.excelSheetModel({
    required final int position,
    required final String name,
    required final String id,
    required final TWorksheet worksheet,
  }) = ExcelSheetModel<TWorksheet>;
  static const excelProps = ['id', 'name', 'position'];
}

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
  unionValueCase: FreezedUnionCase.pascal,
)
class RangeModel<TRange> with _$RangeModel<TRange> {
  const factory RangeModel.mockRangeModel({
    required final int rowsCount,
    required final int columnsCount,
    required final CellModel topLeftCell,
    required final CellModel relativeTopLeftCell,
  }) = MockRangeModel<TRange>;
  const factory RangeModel.excelRangeModel({
    required final int rowsCount,
    required final int columnsCount,
    required final CellModel topLeftCell,
    required final CellModel relativeTopLeftCell,
    required final TRange range,
  }) = ExcelRangeModel<TRange>;
}
