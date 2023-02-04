import 'package:officejs/officejs.dart';

import './excel_api_mock.dart' as excel_api_mock;
import '../../models/models.dart';
import 'excel_api_i.dart';

class ExcelApiMockImpl extends excel_api_mock.ExcelApiImpl {
  ExcelApiMockImpl();
}

class ExcelApiImpl implements ExcelApiI {
  ExcelApiImpl();
  late RequestContext context;
  @override
  Future<void> sync() async => context.sync();

  @override
  Future<void> onLoad() async {
    context = await Excel.run();
  }

  @override
  Future<List<SheetModel>> getSheets() async {
    context.workbook.worksheets.load(['items']);
    await sync();
    final sheets = context.workbook.worksheets.items;
    for (final sheet in sheets) {
      sheet.loadProperties();
    }
    await sync();
    return context.workbook.worksheets.items
        .map(
          (final sheet) => sheet.toSheetModel(),
        )
        .toList();
  }

  @override
  Future<void> renameSheet({
    required final SheetModel sheet,
  }) async {
    final excelSheet = checkSheetType(sheet);
    excelSheet.worksheet.name = sheet.name;
    await sync();
  }

  @override
  Future<void> reorderSheet({
    required final SheetModel sheet,
    required final int position,
  }) async {
    final excelSheet = checkSheetType(sheet);
    excelSheet.worksheet.position = position;
    await sync();
  }

  @override
  Future<void> reorderSheets({required final List<SheetModel> sheets}) async {
    for (int i = 0; i < sheets.length; i++) {
      final sheet = sheets[i];
      final excelSheet = checkSheetType(sheet);
      excelSheet.worksheet.position = i;
    }
    await sync();
  }

  @override
  Future<SheetModel> getActiveSheet() async {
    final sheetModel = context.workbook.worksheets.getActiveWorksheet()
      ..loadProperties();
    await sync();
    return sheetModel.toSheetModel();
  }

  @override
  Future<void> setActiveSheet(final SheetModel sheet) async {
    final excelSheet = checkSheetType(sheet);
    excelSheet.worksheet.activate();
    await sync();
  }

  @override
  Future<SheetModel> getSheetById(final String nameOrId) async {
    final sheet = context.workbook.worksheets.getItem(nameOrId)
      ..loadProperties();
    await sync();
    return sheet.toSheetModel();
  }
}

ExcelSheetModel<Worksheet> checkSheetType(
  final SheetModel sheet,
) {
  if (sheet is ExcelSheetModel<Worksheet>) {
    return sheet;
  } else if (sheet is MockSheetModel) {
    throw ArgumentError.value(
      'Workheet must be provided for web implementation',
    );
  } else {
    throw ArgumentError('unknown sheet type $sheet');
  }
}

extension WorksheetExt on Worksheet {
  void loadProperties() {
    load(SheetModel.excelProps);
  }

  SheetModel<Worksheet> toSheetModel() => SheetModel<Worksheet>.excelSheetModel(
        name: name,
        id: id,
        worksheet: this,
        position: position,
      );
}
