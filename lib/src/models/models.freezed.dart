// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CellModel _$CellModelFromJson(Map<String, dynamic> json) {
  return _CellModel.fromJson(json);
}

/// @nodoc
mixin _$CellModel {
  int get rowIndex => throw _privateConstructorUsedError;
  int get columnIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CellModelCopyWith<CellModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellModelCopyWith<$Res> {
  factory $CellModelCopyWith(CellModel value, $Res Function(CellModel) then) =
      _$CellModelCopyWithImpl<$Res, CellModel>;
  @useResult
  $Res call({int rowIndex, int columnIndex});
}

/// @nodoc
class _$CellModelCopyWithImpl<$Res, $Val extends CellModel>
    implements $CellModelCopyWith<$Res> {
  _$CellModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowIndex = null,
    Object? columnIndex = null,
  }) {
    return _then(_value.copyWith(
      rowIndex: null == rowIndex
          ? _value.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      columnIndex: null == columnIndex
          ? _value.columnIndex
          : columnIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CellModelCopyWith<$Res> implements $CellModelCopyWith<$Res> {
  factory _$$_CellModelCopyWith(
          _$_CellModel value, $Res Function(_$_CellModel) then) =
      __$$_CellModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rowIndex, int columnIndex});
}

/// @nodoc
class __$$_CellModelCopyWithImpl<$Res>
    extends _$CellModelCopyWithImpl<$Res, _$_CellModel>
    implements _$$_CellModelCopyWith<$Res> {
  __$$_CellModelCopyWithImpl(
      _$_CellModel _value, $Res Function(_$_CellModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowIndex = null,
    Object? columnIndex = null,
  }) {
    return _then(_$_CellModel(
      rowIndex: null == rowIndex
          ? _value.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      columnIndex: null == columnIndex
          ? _value.columnIndex
          : columnIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CellModel extends _CellModel {
  const _$_CellModel({required this.rowIndex, required this.columnIndex})
      : super._();

  factory _$_CellModel.fromJson(Map<String, dynamic> json) =>
      _$$_CellModelFromJson(json);

  @override
  final int rowIndex;
  @override
  final int columnIndex;

  @override
  String toString() {
    return 'CellModel(rowIndex: $rowIndex, columnIndex: $columnIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CellModel &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.columnIndex, columnIndex) ||
                other.columnIndex == columnIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rowIndex, columnIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellModelCopyWith<_$_CellModel> get copyWith =>
      __$$_CellModelCopyWithImpl<_$_CellModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellModelToJson(
      this,
    );
  }
}

abstract class _CellModel extends CellModel {
  const factory _CellModel(
      {required final int rowIndex,
      required final int columnIndex}) = _$_CellModel;
  const _CellModel._() : super._();

  factory _CellModel.fromJson(Map<String, dynamic> json) =
      _$_CellModel.fromJson;

  @override
  int get rowIndex;
  @override
  int get columnIndex;
  @override
  @JsonKey(ignore: true)
  _$$_CellModelCopyWith<_$_CellModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SheetModel<TWorksheet> {
  int get position => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position, String name, String id)
        mockSheetModel,
    required TResult Function(
            int position, String name, String id, TWorksheet worksheet)
        excelSheetModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position, String name, String id)? mockSheetModel,
    TResult? Function(
            int position, String name, String id, TWorksheet worksheet)?
        excelSheetModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position, String name, String id)? mockSheetModel,
    TResult Function(
            int position, String name, String id, TWorksheet worksheet)?
        excelSheetModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MockSheetModel<TWorksheet> value) mockSheetModel,
    required TResult Function(ExcelSheetModel<TWorksheet> value)
        excelSheetModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult? Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SheetModelCopyWith<TWorksheet, SheetModel<TWorksheet>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SheetModelCopyWith<TWorksheet, $Res> {
  factory $SheetModelCopyWith(SheetModel<TWorksheet> value,
          $Res Function(SheetModel<TWorksheet>) then) =
      _$SheetModelCopyWithImpl<TWorksheet, $Res, SheetModel<TWorksheet>>;
  @useResult
  $Res call({int position, String name, String id});
}

/// @nodoc
class _$SheetModelCopyWithImpl<TWorksheet, $Res,
        $Val extends SheetModel<TWorksheet>>
    implements $SheetModelCopyWith<TWorksheet, $Res> {
  _$SheetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MockSheetModelCopyWith<TWorksheet, $Res>
    implements $SheetModelCopyWith<TWorksheet, $Res> {
  factory _$$MockSheetModelCopyWith(_$MockSheetModel<TWorksheet> value,
          $Res Function(_$MockSheetModel<TWorksheet>) then) =
      __$$MockSheetModelCopyWithImpl<TWorksheet, $Res>;
  @override
  @useResult
  $Res call({int position, String name, String id});
}

/// @nodoc
class __$$MockSheetModelCopyWithImpl<TWorksheet, $Res>
    extends _$SheetModelCopyWithImpl<TWorksheet, $Res,
        _$MockSheetModel<TWorksheet>>
    implements _$$MockSheetModelCopyWith<TWorksheet, $Res> {
  __$$MockSheetModelCopyWithImpl(_$MockSheetModel<TWorksheet> _value,
      $Res Function(_$MockSheetModel<TWorksheet>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$MockSheetModel<TWorksheet>(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MockSheetModel<TWorksheet> implements MockSheetModel<TWorksheet> {
  const _$MockSheetModel(
      {required this.position, required this.name, required this.id});

  @override
  final int position;
  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'SheetModel<$TWorksheet>.mockSheetModel(position: $position, name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MockSheetModel<TWorksheet> &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MockSheetModelCopyWith<TWorksheet, _$MockSheetModel<TWorksheet>>
      get copyWith => __$$MockSheetModelCopyWithImpl<TWorksheet,
          _$MockSheetModel<TWorksheet>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position, String name, String id)
        mockSheetModel,
    required TResult Function(
            int position, String name, String id, TWorksheet worksheet)
        excelSheetModel,
  }) {
    return mockSheetModel(position, name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position, String name, String id)? mockSheetModel,
    TResult? Function(
            int position, String name, String id, TWorksheet worksheet)?
        excelSheetModel,
  }) {
    return mockSheetModel?.call(position, name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position, String name, String id)? mockSheetModel,
    TResult Function(
            int position, String name, String id, TWorksheet worksheet)?
        excelSheetModel,
    required TResult orElse(),
  }) {
    if (mockSheetModel != null) {
      return mockSheetModel(position, name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MockSheetModel<TWorksheet> value) mockSheetModel,
    required TResult Function(ExcelSheetModel<TWorksheet> value)
        excelSheetModel,
  }) {
    return mockSheetModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult? Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
  }) {
    return mockSheetModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
    required TResult orElse(),
  }) {
    if (mockSheetModel != null) {
      return mockSheetModel(this);
    }
    return orElse();
  }
}

abstract class MockSheetModel<TWorksheet> implements SheetModel<TWorksheet> {
  const factory MockSheetModel(
      {required final int position,
      required final String name,
      required final String id}) = _$MockSheetModel<TWorksheet>;

  @override
  int get position;
  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$MockSheetModelCopyWith<TWorksheet, _$MockSheetModel<TWorksheet>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExcelSheetModelCopyWith<TWorksheet, $Res>
    implements $SheetModelCopyWith<TWorksheet, $Res> {
  factory _$$ExcelSheetModelCopyWith(_$ExcelSheetModel<TWorksheet> value,
          $Res Function(_$ExcelSheetModel<TWorksheet>) then) =
      __$$ExcelSheetModelCopyWithImpl<TWorksheet, $Res>;
  @override
  @useResult
  $Res call({int position, String name, String id, TWorksheet worksheet});
}

/// @nodoc
class __$$ExcelSheetModelCopyWithImpl<TWorksheet, $Res>
    extends _$SheetModelCopyWithImpl<TWorksheet, $Res,
        _$ExcelSheetModel<TWorksheet>>
    implements _$$ExcelSheetModelCopyWith<TWorksheet, $Res> {
  __$$ExcelSheetModelCopyWithImpl(_$ExcelSheetModel<TWorksheet> _value,
      $Res Function(_$ExcelSheetModel<TWorksheet>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? name = null,
    Object? id = null,
    Object? worksheet = freezed,
  }) {
    return _then(_$ExcelSheetModel<TWorksheet>(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      worksheet: freezed == worksheet
          ? _value.worksheet
          : worksheet // ignore: cast_nullable_to_non_nullable
              as TWorksheet,
    ));
  }
}

/// @nodoc

class _$ExcelSheetModel<TWorksheet> implements ExcelSheetModel<TWorksheet> {
  const _$ExcelSheetModel(
      {required this.position,
      required this.name,
      required this.id,
      required this.worksheet});

  @override
  final int position;
  @override
  final String name;
  @override
  final String id;
  @override
  final TWorksheet worksheet;

  @override
  String toString() {
    return 'SheetModel<$TWorksheet>.excelSheetModel(position: $position, name: $name, id: $id, worksheet: $worksheet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExcelSheetModel<TWorksheet> &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.worksheet, worksheet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, name, id,
      const DeepCollectionEquality().hash(worksheet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExcelSheetModelCopyWith<TWorksheet, _$ExcelSheetModel<TWorksheet>>
      get copyWith => __$$ExcelSheetModelCopyWithImpl<TWorksheet,
          _$ExcelSheetModel<TWorksheet>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position, String name, String id)
        mockSheetModel,
    required TResult Function(
            int position, String name, String id, TWorksheet worksheet)
        excelSheetModel,
  }) {
    return excelSheetModel(position, name, id, worksheet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position, String name, String id)? mockSheetModel,
    TResult? Function(
            int position, String name, String id, TWorksheet worksheet)?
        excelSheetModel,
  }) {
    return excelSheetModel?.call(position, name, id, worksheet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position, String name, String id)? mockSheetModel,
    TResult Function(
            int position, String name, String id, TWorksheet worksheet)?
        excelSheetModel,
    required TResult orElse(),
  }) {
    if (excelSheetModel != null) {
      return excelSheetModel(position, name, id, worksheet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MockSheetModel<TWorksheet> value) mockSheetModel,
    required TResult Function(ExcelSheetModel<TWorksheet> value)
        excelSheetModel,
  }) {
    return excelSheetModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult? Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
  }) {
    return excelSheetModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
    required TResult orElse(),
  }) {
    if (excelSheetModel != null) {
      return excelSheetModel(this);
    }
    return orElse();
  }
}

abstract class ExcelSheetModel<TWorksheet> implements SheetModel<TWorksheet> {
  const factory ExcelSheetModel(
      {required final int position,
      required final String name,
      required final String id,
      required final TWorksheet worksheet}) = _$ExcelSheetModel<TWorksheet>;

  @override
  int get position;
  @override
  String get name;
  @override
  String get id;
  TWorksheet get worksheet;
  @override
  @JsonKey(ignore: true)
  _$$ExcelSheetModelCopyWith<TWorksheet, _$ExcelSheetModel<TWorksheet>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RangeModel<TRange> {
  int get rowsCount => throw _privateConstructorUsedError;
  int get columnsCount => throw _privateConstructorUsedError;
  CellModel get topLeftCell => throw _privateConstructorUsedError;
  CellModel get relativeTopLeftCell => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rowsCount, int columnsCount,
            CellModel topLeftCell, CellModel relativeTopLeftCell)
        mockRangeModel,
    required TResult Function(int rowsCount, int columnsCount,
            CellModel topLeftCell, CellModel relativeTopLeftCell, TRange range)
        excelRangeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell)?
        mockRangeModel,
    TResult? Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell, TRange range)?
        excelRangeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell)?
        mockRangeModel,
    TResult Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell, TRange range)?
        excelRangeModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MockRangeModel<TRange> value) mockRangeModel,
    required TResult Function(ExcelRangeModel<TRange> value) excelRangeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MockRangeModel<TRange> value)? mockRangeModel,
    TResult? Function(ExcelRangeModel<TRange> value)? excelRangeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MockRangeModel<TRange> value)? mockRangeModel,
    TResult Function(ExcelRangeModel<TRange> value)? excelRangeModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RangeModelCopyWith<TRange, RangeModel<TRange>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeModelCopyWith<TRange, $Res> {
  factory $RangeModelCopyWith(
          RangeModel<TRange> value, $Res Function(RangeModel<TRange>) then) =
      _$RangeModelCopyWithImpl<TRange, $Res, RangeModel<TRange>>;
  @useResult
  $Res call(
      {int rowsCount,
      int columnsCount,
      CellModel topLeftCell,
      CellModel relativeTopLeftCell});

  $CellModelCopyWith<$Res> get topLeftCell;
  $CellModelCopyWith<$Res> get relativeTopLeftCell;
}

/// @nodoc
class _$RangeModelCopyWithImpl<TRange, $Res, $Val extends RangeModel<TRange>>
    implements $RangeModelCopyWith<TRange, $Res> {
  _$RangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowsCount = null,
    Object? columnsCount = null,
    Object? topLeftCell = null,
    Object? relativeTopLeftCell = null,
  }) {
    return _then(_value.copyWith(
      rowsCount: null == rowsCount
          ? _value.rowsCount
          : rowsCount // ignore: cast_nullable_to_non_nullable
              as int,
      columnsCount: null == columnsCount
          ? _value.columnsCount
          : columnsCount // ignore: cast_nullable_to_non_nullable
              as int,
      topLeftCell: null == topLeftCell
          ? _value.topLeftCell
          : topLeftCell // ignore: cast_nullable_to_non_nullable
              as CellModel,
      relativeTopLeftCell: null == relativeTopLeftCell
          ? _value.relativeTopLeftCell
          : relativeTopLeftCell // ignore: cast_nullable_to_non_nullable
              as CellModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CellModelCopyWith<$Res> get topLeftCell {
    return $CellModelCopyWith<$Res>(_value.topLeftCell, (value) {
      return _then(_value.copyWith(topLeftCell: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CellModelCopyWith<$Res> get relativeTopLeftCell {
    return $CellModelCopyWith<$Res>(_value.relativeTopLeftCell, (value) {
      return _then(_value.copyWith(relativeTopLeftCell: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MockRangeModelCopyWith<TRange, $Res>
    implements $RangeModelCopyWith<TRange, $Res> {
  factory _$$MockRangeModelCopyWith(_$MockRangeModel<TRange> value,
          $Res Function(_$MockRangeModel<TRange>) then) =
      __$$MockRangeModelCopyWithImpl<TRange, $Res>;
  @override
  @useResult
  $Res call(
      {int rowsCount,
      int columnsCount,
      CellModel topLeftCell,
      CellModel relativeTopLeftCell});

  @override
  $CellModelCopyWith<$Res> get topLeftCell;
  @override
  $CellModelCopyWith<$Res> get relativeTopLeftCell;
}

/// @nodoc
class __$$MockRangeModelCopyWithImpl<TRange, $Res>
    extends _$RangeModelCopyWithImpl<TRange, $Res, _$MockRangeModel<TRange>>
    implements _$$MockRangeModelCopyWith<TRange, $Res> {
  __$$MockRangeModelCopyWithImpl(_$MockRangeModel<TRange> _value,
      $Res Function(_$MockRangeModel<TRange>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowsCount = null,
    Object? columnsCount = null,
    Object? topLeftCell = null,
    Object? relativeTopLeftCell = null,
  }) {
    return _then(_$MockRangeModel<TRange>(
      rowsCount: null == rowsCount
          ? _value.rowsCount
          : rowsCount // ignore: cast_nullable_to_non_nullable
              as int,
      columnsCount: null == columnsCount
          ? _value.columnsCount
          : columnsCount // ignore: cast_nullable_to_non_nullable
              as int,
      topLeftCell: null == topLeftCell
          ? _value.topLeftCell
          : topLeftCell // ignore: cast_nullable_to_non_nullable
              as CellModel,
      relativeTopLeftCell: null == relativeTopLeftCell
          ? _value.relativeTopLeftCell
          : relativeTopLeftCell // ignore: cast_nullable_to_non_nullable
              as CellModel,
    ));
  }
}

/// @nodoc

class _$MockRangeModel<TRange> implements MockRangeModel<TRange> {
  const _$MockRangeModel(
      {required this.rowsCount,
      required this.columnsCount,
      required this.topLeftCell,
      required this.relativeTopLeftCell});

  @override
  final int rowsCount;
  @override
  final int columnsCount;
  @override
  final CellModel topLeftCell;
  @override
  final CellModel relativeTopLeftCell;

  @override
  String toString() {
    return 'RangeModel<$TRange>.mockRangeModel(rowsCount: $rowsCount, columnsCount: $columnsCount, topLeftCell: $topLeftCell, relativeTopLeftCell: $relativeTopLeftCell)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MockRangeModel<TRange> &&
            (identical(other.rowsCount, rowsCount) ||
                other.rowsCount == rowsCount) &&
            (identical(other.columnsCount, columnsCount) ||
                other.columnsCount == columnsCount) &&
            (identical(other.topLeftCell, topLeftCell) ||
                other.topLeftCell == topLeftCell) &&
            (identical(other.relativeTopLeftCell, relativeTopLeftCell) ||
                other.relativeTopLeftCell == relativeTopLeftCell));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, rowsCount, columnsCount, topLeftCell, relativeTopLeftCell);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MockRangeModelCopyWith<TRange, _$MockRangeModel<TRange>> get copyWith =>
      __$$MockRangeModelCopyWithImpl<TRange, _$MockRangeModel<TRange>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rowsCount, int columnsCount,
            CellModel topLeftCell, CellModel relativeTopLeftCell)
        mockRangeModel,
    required TResult Function(int rowsCount, int columnsCount,
            CellModel topLeftCell, CellModel relativeTopLeftCell, TRange range)
        excelRangeModel,
  }) {
    return mockRangeModel(
        rowsCount, columnsCount, topLeftCell, relativeTopLeftCell);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell)?
        mockRangeModel,
    TResult? Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell, TRange range)?
        excelRangeModel,
  }) {
    return mockRangeModel?.call(
        rowsCount, columnsCount, topLeftCell, relativeTopLeftCell);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell)?
        mockRangeModel,
    TResult Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell, TRange range)?
        excelRangeModel,
    required TResult orElse(),
  }) {
    if (mockRangeModel != null) {
      return mockRangeModel(
          rowsCount, columnsCount, topLeftCell, relativeTopLeftCell);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MockRangeModel<TRange> value) mockRangeModel,
    required TResult Function(ExcelRangeModel<TRange> value) excelRangeModel,
  }) {
    return mockRangeModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MockRangeModel<TRange> value)? mockRangeModel,
    TResult? Function(ExcelRangeModel<TRange> value)? excelRangeModel,
  }) {
    return mockRangeModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MockRangeModel<TRange> value)? mockRangeModel,
    TResult Function(ExcelRangeModel<TRange> value)? excelRangeModel,
    required TResult orElse(),
  }) {
    if (mockRangeModel != null) {
      return mockRangeModel(this);
    }
    return orElse();
  }
}

abstract class MockRangeModel<TRange> implements RangeModel<TRange> {
  const factory MockRangeModel(
      {required final int rowsCount,
      required final int columnsCount,
      required final CellModel topLeftCell,
      required final CellModel relativeTopLeftCell}) = _$MockRangeModel<TRange>;

  @override
  int get rowsCount;
  @override
  int get columnsCount;
  @override
  CellModel get topLeftCell;
  @override
  CellModel get relativeTopLeftCell;
  @override
  @JsonKey(ignore: true)
  _$$MockRangeModelCopyWith<TRange, _$MockRangeModel<TRange>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExcelRangeModelCopyWith<TRange, $Res>
    implements $RangeModelCopyWith<TRange, $Res> {
  factory _$$ExcelRangeModelCopyWith(_$ExcelRangeModel<TRange> value,
          $Res Function(_$ExcelRangeModel<TRange>) then) =
      __$$ExcelRangeModelCopyWithImpl<TRange, $Res>;
  @override
  @useResult
  $Res call(
      {int rowsCount,
      int columnsCount,
      CellModel topLeftCell,
      CellModel relativeTopLeftCell,
      TRange range});

  @override
  $CellModelCopyWith<$Res> get topLeftCell;
  @override
  $CellModelCopyWith<$Res> get relativeTopLeftCell;
}

/// @nodoc
class __$$ExcelRangeModelCopyWithImpl<TRange, $Res>
    extends _$RangeModelCopyWithImpl<TRange, $Res, _$ExcelRangeModel<TRange>>
    implements _$$ExcelRangeModelCopyWith<TRange, $Res> {
  __$$ExcelRangeModelCopyWithImpl(_$ExcelRangeModel<TRange> _value,
      $Res Function(_$ExcelRangeModel<TRange>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowsCount = null,
    Object? columnsCount = null,
    Object? topLeftCell = null,
    Object? relativeTopLeftCell = null,
    Object? range = freezed,
  }) {
    return _then(_$ExcelRangeModel<TRange>(
      rowsCount: null == rowsCount
          ? _value.rowsCount
          : rowsCount // ignore: cast_nullable_to_non_nullable
              as int,
      columnsCount: null == columnsCount
          ? _value.columnsCount
          : columnsCount // ignore: cast_nullable_to_non_nullable
              as int,
      topLeftCell: null == topLeftCell
          ? _value.topLeftCell
          : topLeftCell // ignore: cast_nullable_to_non_nullable
              as CellModel,
      relativeTopLeftCell: null == relativeTopLeftCell
          ? _value.relativeTopLeftCell
          : relativeTopLeftCell // ignore: cast_nullable_to_non_nullable
              as CellModel,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as TRange,
    ));
  }
}

/// @nodoc

class _$ExcelRangeModel<TRange> implements ExcelRangeModel<TRange> {
  const _$ExcelRangeModel(
      {required this.rowsCount,
      required this.columnsCount,
      required this.topLeftCell,
      required this.relativeTopLeftCell,
      required this.range});

  @override
  final int rowsCount;
  @override
  final int columnsCount;
  @override
  final CellModel topLeftCell;
  @override
  final CellModel relativeTopLeftCell;
  @override
  final TRange range;

  @override
  String toString() {
    return 'RangeModel<$TRange>.excelRangeModel(rowsCount: $rowsCount, columnsCount: $columnsCount, topLeftCell: $topLeftCell, relativeTopLeftCell: $relativeTopLeftCell, range: $range)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExcelRangeModel<TRange> &&
            (identical(other.rowsCount, rowsCount) ||
                other.rowsCount == rowsCount) &&
            (identical(other.columnsCount, columnsCount) ||
                other.columnsCount == columnsCount) &&
            (identical(other.topLeftCell, topLeftCell) ||
                other.topLeftCell == topLeftCell) &&
            (identical(other.relativeTopLeftCell, relativeTopLeftCell) ||
                other.relativeTopLeftCell == relativeTopLeftCell) &&
            const DeepCollectionEquality().equals(other.range, range));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowsCount,
      columnsCount,
      topLeftCell,
      relativeTopLeftCell,
      const DeepCollectionEquality().hash(range));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExcelRangeModelCopyWith<TRange, _$ExcelRangeModel<TRange>> get copyWith =>
      __$$ExcelRangeModelCopyWithImpl<TRange, _$ExcelRangeModel<TRange>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rowsCount, int columnsCount,
            CellModel topLeftCell, CellModel relativeTopLeftCell)
        mockRangeModel,
    required TResult Function(int rowsCount, int columnsCount,
            CellModel topLeftCell, CellModel relativeTopLeftCell, TRange range)
        excelRangeModel,
  }) {
    return excelRangeModel(
        rowsCount, columnsCount, topLeftCell, relativeTopLeftCell, range);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell)?
        mockRangeModel,
    TResult? Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell, TRange range)?
        excelRangeModel,
  }) {
    return excelRangeModel?.call(
        rowsCount, columnsCount, topLeftCell, relativeTopLeftCell, range);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell)?
        mockRangeModel,
    TResult Function(int rowsCount, int columnsCount, CellModel topLeftCell,
            CellModel relativeTopLeftCell, TRange range)?
        excelRangeModel,
    required TResult orElse(),
  }) {
    if (excelRangeModel != null) {
      return excelRangeModel(
          rowsCount, columnsCount, topLeftCell, relativeTopLeftCell, range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MockRangeModel<TRange> value) mockRangeModel,
    required TResult Function(ExcelRangeModel<TRange> value) excelRangeModel,
  }) {
    return excelRangeModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MockRangeModel<TRange> value)? mockRangeModel,
    TResult? Function(ExcelRangeModel<TRange> value)? excelRangeModel,
  }) {
    return excelRangeModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MockRangeModel<TRange> value)? mockRangeModel,
    TResult Function(ExcelRangeModel<TRange> value)? excelRangeModel,
    required TResult orElse(),
  }) {
    if (excelRangeModel != null) {
      return excelRangeModel(this);
    }
    return orElse();
  }
}

abstract class ExcelRangeModel<TRange> implements RangeModel<TRange> {
  const factory ExcelRangeModel(
      {required final int rowsCount,
      required final int columnsCount,
      required final CellModel topLeftCell,
      required final CellModel relativeTopLeftCell,
      required final TRange range}) = _$ExcelRangeModel<TRange>;

  @override
  int get rowsCount;
  @override
  int get columnsCount;
  @override
  CellModel get topLeftCell;
  @override
  CellModel get relativeTopLeftCell;
  TRange get range;
  @override
  @JsonKey(ignore: true)
  _$$ExcelRangeModelCopyWith<TRange, _$ExcelRangeModel<TRange>> get copyWith =>
      throw _privateConstructorUsedError;
}
