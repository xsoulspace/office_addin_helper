import 'package:officejs/officejs.dart';

import '../../models/models.dart';
import 'api.dart';

extension SheetModelExtension on SheetModel {
  ExcelSheetModel<Worksheet> toExcelSheet() {
    if (this is! ExcelSheetModel) throw UnsupportedError('$this');
    return this as ExcelSheetModel<Worksheet>;
  }
}

extension RangeModelExtension on RangeModel {
  ExcelRangeModel<Range> toExcelRange() {
    if (this is! ExcelRangeModel) throw UnsupportedError('$this');
    return this as ExcelRangeModel<Range>;
  }
}

extension ExcelSheetModelExtension on ExcelSheetModel<Worksheet> {
  void addTrackingRange(final ExcelRangeModel<Range> excelRange) {
    worksheet.context.trackedObjects.add(excelRange.range);
  }

  void removeTrackingRange(final ExcelRangeModel<Range> excelRange) {
    worksheet.context.trackedObjects.remove(excelRange.range);
  }
}

class ExcelTableApiImpl extends ExcelTableApi {
  ExcelTableApiImpl({
    required super.excelApi,
  });

  Future<void> sync() async => excelApi.sync();
  @override
  Future<SheetModel> getSheet(final String nameOrId) {
    return excelApi.getSheetById(nameOrId);
  }

  ExcelRangeModel<Range> _getRange({
    required final ExcelSheetModel<Worksheet> sheet,
    required final int absoluteRowIndex,
    required final int absoluteColumnIndex,
    required final int rowCount,
    required final int columnCount,
    required final int relativeRowIndex,
    required final int relativeColumnIndex,
  }) {
    final rowIndex = absoluteRowIndex + relativeRowIndex;
    final columnIndex = absoluteColumnIndex + relativeColumnIndex;

    final excelRange = sheet.worksheet.getRangeByIndexes(
      startRow: rowIndex,
      startColumn: columnIndex,
      rowCount: rowCount,
      columnCount: columnCount,
    );
    final range = ExcelRangeModel(
      range: excelRange,
      relativeTopLeftCell: CellModel(
        columnIndex: relativeColumnIndex,
        rowIndex: relativeRowIndex,
      ),
      topLeftCell: CellModel(
        columnIndex: absoluteRowIndex,
        rowIndex: absoluteColumnIndex,
      ),
      rowsCount: rowCount,
      columnsCount: columnCount,
    );
    return range;
  }

  Future<CellModel> getAbsoluteBottomRightCell({
    required final ExcelSheetModel<Worksheet> sheet,
    required final CellModel topLeftCell,
  }) async {
    final lastCell = sheet.worksheet
        .getCell(row: topLeftCell.rowIndex, column: topLeftCell.columnIndex)
        .getSurroundingRegion()
        .getUsedRange()
        .getLastRow()
        .getLastCell()
      ..load(['rowIndex', 'columnIndex']);
    await sync();
    return CellModel(
      rowIndex: lastCell.rowIndex,
      columnIndex: lastCell.columnIndex,
    );
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
    final excelSheet = sheet.toExcelSheet();

    final absoluteLastCell = await getAbsoluteBottomRightCell(
      sheet: excelSheet,
      topLeftCell: topLeftCell,
    );
    final allRowsCount = absoluteLastCell.rowIndex - topLeftCell.rowIndex + 1;

    final effectiveRowsCount = () {
      if (rowsCount != null) return rowsCount;

      return allRowsCount;
    }();

    final int relativeRowIndex = () {
      if (shouldInsertUnderLastRow) {
        return allRowsCount;
      } else {
        return 0;
      }
    }();

    final range = _getRange(
      absoluteColumnIndex: topLeftCell.columnIndex,
      absoluteRowIndex: topLeftCell.rowIndex,
      relativeColumnIndex: relativeColumnIndex,
      relativeRowIndex: relativeRowIndex,
      rowCount: effectiveRowsCount,
      columnCount: 1,
      sheet: excelSheet,
    );

    if (shouldTrackRange) {
      excelSheet.addTrackingRange(range);
    }
    return range;
  }

  @override
  Future<RangeModel> getRowRange({
    required final CellModel topLeftCell,
    required final SheetModel sheet,
    final bool shouldTrackRange = false,
    final int relativeRowIndex = 0,
    final int? columnCount,
  }) async {
    final excelSheet = sheet.toExcelSheet();
    final absoluteLastCell = await getAbsoluteBottomRightCell(
      sheet: excelSheet,
      topLeftCell: topLeftCell,
    );
    final allColumnsCount =
        absoluteLastCell.columnIndex - topLeftCell.columnIndex + 1;

    final effectiveColumnCount = () {
      if (columnCount != null) return columnCount;

      return allColumnsCount;
    }();

    final range = _getRange(
      absoluteColumnIndex: topLeftCell.columnIndex,
      absoluteRowIndex: topLeftCell.rowIndex,
      relativeColumnIndex: 0,
      relativeRowIndex: relativeRowIndex,
      rowCount: 1,
      columnCount: effectiveColumnCount,
      sheet: excelSheet,
    );

    if (shouldTrackRange) {
      excelSheet.addTrackingRange(range);
    }
    return range;
  }

  @override
  Future<ExcelTableData> loadRangeValues({
    required final RangeModel range,
  }) async {
    final excelRange = range.toExcelRange();
    excelRange.range.load(['values']);
    await sync();
    return excelRange.range.values;
  }

  @override
  Future<void> updateRangeValues({
    required final RangeModel range,
    required final ExcelTableData values,
  }) async {
    final excelRange = range.toExcelRange();
    excelRange.range.values = values;
    await sync();
  }

  @override
  void removeTrackingRange({
    required final SheetModel sheet,
    required final RangeModel range,
  }) {
    final excelSheet = sheet.toExcelSheet();
    final excelRange = range.toExcelRange();
    excelSheet.removeTrackingRange(excelRange);
  }
}
