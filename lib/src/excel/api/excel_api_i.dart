import 'package:life_hooks/life_hooks.dart';

import '../../models/models.dart';

export 'excel_api_mock.dart' if (dart.library.html) 'excel_api_web.dart';

abstract class ExcelApiI implements Loadable {
  Future<void> sync() async {}
  Future<List<SheetModel>> getSheets();
  Future<void> renameSheet({
    required final SheetModel sheet,
  });
  Future<void> reorderSheet({
    required final SheetModel sheet,
    required final int position,
  });
  Future<void> reorderSheets({
    required final List<SheetModel> sheets,
  });
  Future<void> setActiveSheet(final SheetModel sheet);
  Future<SheetModel> getActiveSheet();
  Future<SheetModel> getSheetById(final String id);
}
