import '../../models/models.dart';
import 'excel_api_i.dart';

class ExcelApiMockImpl extends ExcelApiImpl {
  ExcelApiMockImpl();
}

class ExcelApiImpl extends ExcelApiI {
  ExcelApiImpl();

  final _sheets = <SheetModel>[
    const SheetModel.mockSheetModel(name: 'Stock', id: '2', position: 0),
    const SheetModel.mockSheetModel(name: 'Products', id: '1', position: 0),
    const SheetModel.mockSheetModel(name: 'Total', id: '3', position: 0),
    const SheetModel.mockSheetModel(name: 'Report', id: '4', position: 0),
  ];
  @override
  Future<List<SheetModel>> getSheets() async {
    return _sheets;
  }

  @override
  Future<void> renameSheet({
    required final SheetModel sheet,
  }) async {
    final index = _sheets.indexWhere((final el) => el.id == sheet.id);
    if (index < 0) return;
    _sheets
      ..removeAt(index)
      ..insert(index, sheet);
  }

  @override
  Future<void> reorderSheet({
    required final SheetModel sheet,
    required final int position,
  }) async {
    final oldIndex = _sheets.indexWhere((final el) => el.id == sheet.id);
    int effectiveNewIndex = position;
    if (oldIndex < effectiveNewIndex) {
      effectiveNewIndex -= 1;
    }
    final item = _sheets.removeAt(oldIndex);
    _sheets.insert(effectiveNewIndex, item);
  }

  @override
  Future<void> reorderSheets({required final List<SheetModel> sheets}) async {
    _sheets
      ..clear()
      ..addAll(sheets);
  }

  @override
  Future<SheetModel> getActiveSheet() async {
    return _sheets.first;
  }

  @override
  Future<void> setActiveSheet(final SheetModel sheet) async {
    return;
  }

  @override
  Future<void> onLoad() async {
    return;
  }

  @override
  Future<SheetModel> getSheetById(final String id) async {
    return _sheets.firstWhere((final sheet) => sheet.id == id);
  }
}
