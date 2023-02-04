import '../../models/models.dart';

export 'excel_table_mock_api.dart'
    if (dart.library.html) 'excel_table_web_api.dart';

abstract class ExcelTableApi {
  ExcelTableApi();
  final trackingRanges = <String, RangeModel>{};
  Future<SheetModel> getSheet(final String nameOrId);
  Future<RangeModel> getRowRange({
    /// absolute positioned cell
    required final CellModel topLeftCell,
    required final SheetModel sheet,
    final bool shouldTrackRange = false,
    final int relativeRowIndex = 0,
  });
  Future<RangeModel> getColumnRange({
    /// absolute positioned cell
    required final CellModel topLeftCell,
    required final SheetModel sheet,
    final int relativeColumnIndex = 0,
    final bool shouldInsertUnderLastRow = false,
    final bool shouldTrackRange = false,
    final int? rowsCount,
  });
  Future<ExcelTableData> loadRangeValues({
    required final RangeModel range,
  });
  Future<void> updateRangeValues({
    required final RangeModel range,
    required final ExcelTableData values,
  });
  void removeTrackingRange({
    required final SheetModel sheet,
    required final RangeModel range,
  });
}

class ExcelTableMockApiImpl extends ExcelTableApi {
  ExcelTableMockApiImpl({
    required this.tables,
  });
  final Map<CellModel, List<List<dynamic>?>> tables;

  @override
  Future<SheetModel> getSheet(final String nameOrId) async {
    return SheetModel.mockSheetModel(position: 0, name: nameOrId, id: nameOrId);
  }

  @override
  Future<RangeModel> getColumnRange({
    required final CellModel topLeftCell,
    required final SheetModel sheet,
    final int relativeColumnIndex = 0,
    final bool shouldInsertUnderLastRow = false,
    final bool shouldTrackRange = false,
    final int? rowsCount,
  }) async {
    final values = tables[topLeftCell]!;
    final int rowIndex;
    if (shouldInsertUnderLastRow) {
      rowIndex = values.length;
    } else {
      rowIndex = 0;
    }
    return RangeModel.mockRangeModel(
      rowsCount: rowsCount ?? values.length,
      columnsCount: 1,
      relativeTopLeftCell: CellModel(
        rowIndex: rowIndex,
        columnIndex: relativeColumnIndex,
      ),
      topLeftCell: topLeftCell,
    );
  }

  @override
  Future<RangeModel> getRowRange({
    required final CellModel topLeftCell,
    required final SheetModel sheet,
    final bool shouldTrackRange = false,
    final int relativeRowIndex = 0,
  }) async {
    final values = tables[topLeftCell]!;
    return RangeModel.mockRangeModel(
      rowsCount: 1,
      columnsCount: values.first!.length,
      relativeTopLeftCell: CellModel(
        rowIndex: relativeRowIndex,
        columnIndex: 0,
      ),
      topLeftCell: topLeftCell,
    );
  }

  @override
  Future<ExcelTableData> loadRangeValues({
    required final RangeModel range,
  }) async {
    final values = tables[range.topLeftCell]!;
    return values
        .getRange(
      range.relativeTopLeftCell.rowIndex,
      range.relativeTopLeftCell.rowIndex + range.rowsCount,
    )
        .map((final e) {
      return e!
          .getRange(
            range.relativeTopLeftCell.columnIndex,
            range.relativeTopLeftCell.columnIndex + range.columnsCount,
          )
          .toList();
    }).toList();
  }

  @override
  Future<void> updateRangeValues({
    required final RangeModel range,
    required final ExcelTableData values,
  }) async {
    final oldValues = tables[range.topLeftCell]!;
    final topLeftCell = range.relativeTopLeftCell;
    final List<List<dynamic>?> rangeValues = [...oldValues];

    for (var index = 0; index < values.length; index++) {
      final rowIndex = range.relativeTopLeftCell.rowIndex + index;
      final List<dynamic> effectiveRowValues;
      if (rowIndex < rangeValues.length) {
        effectiveRowValues = [...?rangeValues[rowIndex]];
      } else {
        effectiveRowValues =
            List.filled(rangeValues.first?.length ?? range.columnsCount, null);
        rangeValues.length = rowIndex + 1;
      }
      final rowValues = values[index];
      effectiveRowValues.setRange(
        topLeftCell.columnIndex,
        topLeftCell.columnIndex + range.columnsCount,
        rowValues,
      );
      rangeValues[rowIndex] = [...effectiveRowValues];
    }
    tables[range.topLeftCell] = rangeValues;
  }

  @override
  void removeTrackingRange({
    required final SheetModel sheet,
    required final RangeModel range,
  }) {
    // noop
  }
}
