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
  void addTrackingRange(final ExcelRangeModel excelRange) {
    worksheet.context.trackedObjects.add(excelRange.range);
  }

  void removeTrackingRange(final ExcelRangeModel excelRange) {
    worksheet.context.trackedObjects.remove(excelRange.range);
  }
}

class ExcelTableApiImpl extends ExcelTableApi {
  ExcelTableApiImpl({
    required this.excelApi,
  });

  final ExcelApiI excelApi;

  Future<void> sync() async => excelApi.sync();
  @override
  Future<SheetModel> getSheet(final String nameOrId) {
    return excelApi.getSheetById(nameOrId);
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
    final rowRange = excelSheet.worksheet
        .getCell(row: topLeftCell.rowIndex, column: topLeftCell.columnIndex)
        .getUsedRange()
        .getColumn(relativeColumnIndex);

    final valuesRowsCount = ;

    final range = ExcelRangeModel(
      range: rowRange,
      relativeTopLeftCell: CellModel(
        rowIndex: 0,
        columnIndex: relativeColumnIndex,
      ),
      topLeftCell: topLeftCell,
      rowsCount: rowsCount ?? valuesRowsCount,
      columnsCount: 1,
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
  }) async {
    final excelSheet = sheet.toExcelSheet();
    final rowRange = excelSheet.worksheet
        .getCell(row: topLeftCell.rowIndex, column: topLeftCell.columnIndex)
        .getUsedRange()
        .getRow(relativeRowIndex);
    
    final valuesColumnsCount =  ;
      
    final range = ExcelRangeModel(
      range: rowRange,
      relativeTopLeftCell: CellModel(
        rowIndex: relativeRowIndex,
        columnIndex: 0,
      ),
      topLeftCell: topLeftCell,
      rowsCount: 1,
      columnsCount: valuesColumnsCount,
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
