// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function(int position, String name, String id)? mockSheetModel,
    TResult Function(
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
    TResult Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
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
      _$SheetModelCopyWithImpl<TWorksheet, $Res>;
  $Res call({int position, String name, String id});
}

/// @nodoc
class _$SheetModelCopyWithImpl<TWorksheet, $Res>
    implements $SheetModelCopyWith<TWorksheet, $Res> {
  _$SheetModelCopyWithImpl(this._value, this._then);

  final SheetModel<TWorksheet> _value;
  // ignore: unused_field
  final $Res Function(SheetModel<TWorksheet>) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$MockSheetModelCopyWith<TWorksheet, $Res>
    implements $SheetModelCopyWith<TWorksheet, $Res> {
  factory _$$MockSheetModelCopyWith(_$MockSheetModel<TWorksheet> value,
          $Res Function(_$MockSheetModel<TWorksheet>) then) =
      __$$MockSheetModelCopyWithImpl<TWorksheet, $Res>;
  @override
  $Res call({int position, String name, String id});
}

/// @nodoc
class __$$MockSheetModelCopyWithImpl<TWorksheet, $Res>
    extends _$SheetModelCopyWithImpl<TWorksheet, $Res>
    implements _$$MockSheetModelCopyWith<TWorksheet, $Res> {
  __$$MockSheetModelCopyWithImpl(_$MockSheetModel<TWorksheet> _value,
      $Res Function(_$MockSheetModel<TWorksheet>) _then)
      : super(_value, (v) => _then(v as _$MockSheetModel<TWorksheet>));

  @override
  _$MockSheetModel<TWorksheet> get _value =>
      super._value as _$MockSheetModel<TWorksheet>;

  @override
  $Res call({
    Object? position = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$MockSheetModel<TWorksheet>(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
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
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
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
    TResult Function(int position, String name, String id)? mockSheetModel,
    TResult Function(
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
    TResult Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
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
  int get position => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
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
  $Res call({int position, String name, String id, TWorksheet worksheet});
}

/// @nodoc
class __$$ExcelSheetModelCopyWithImpl<TWorksheet, $Res>
    extends _$SheetModelCopyWithImpl<TWorksheet, $Res>
    implements _$$ExcelSheetModelCopyWith<TWorksheet, $Res> {
  __$$ExcelSheetModelCopyWithImpl(_$ExcelSheetModel<TWorksheet> _value,
      $Res Function(_$ExcelSheetModel<TWorksheet>) _then)
      : super(_value, (v) => _then(v as _$ExcelSheetModel<TWorksheet>));

  @override
  _$ExcelSheetModel<TWorksheet> get _value =>
      super._value as _$ExcelSheetModel<TWorksheet>;

  @override
  $Res call({
    Object? position = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? worksheet = freezed,
  }) {
    return _then(_$ExcelSheetModel<TWorksheet>(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      worksheet: worksheet == freezed
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
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.worksheet, worksheet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(worksheet));

  @JsonKey(ignore: true)
  @override
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
    TResult Function(int position, String name, String id)? mockSheetModel,
    TResult Function(
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
    TResult Function(MockSheetModel<TWorksheet> value)? mockSheetModel,
    TResult Function(ExcelSheetModel<TWorksheet> value)? excelSheetModel,
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
  int get position => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  TWorksheet get worksheet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ExcelSheetModelCopyWith<TWorksheet, _$ExcelSheetModel<TWorksheet>>
      get copyWith => throw _privateConstructorUsedError;
}
