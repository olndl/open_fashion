// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainCategory _$MainCategoryFromJson(Map<String, dynamic> json) {
  return _MainCategory.fromJson(json);
}

/// @nodoc
mixin _$MainCategory {
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCategoryCopyWith<MainCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCategoryCopyWith<$Res> {
  factory $MainCategoryCopyWith(
          MainCategory value, $Res Function(MainCategory) then) =
      _$MainCategoryCopyWithImpl<$Res, MainCategory>;
  @useResult
  $Res call({@JsonKey(name: 'category_id') int categoryId, String label});
}

/// @nodoc
class _$MainCategoryCopyWithImpl<$Res, $Val extends MainCategory>
    implements $MainCategoryCopyWith<$Res> {
  _$MainCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainCategoryCopyWith<$Res>
    implements $MainCategoryCopyWith<$Res> {
  factory _$$_MainCategoryCopyWith(
          _$_MainCategory value, $Res Function(_$_MainCategory) then) =
      __$$_MainCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'category_id') int categoryId, String label});
}

/// @nodoc
class __$$_MainCategoryCopyWithImpl<$Res>
    extends _$MainCategoryCopyWithImpl<$Res, _$_MainCategory>
    implements _$$_MainCategoryCopyWith<$Res> {
  __$$_MainCategoryCopyWithImpl(
      _$_MainCategory _value, $Res Function(_$_MainCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? label = null,
  }) {
    return _then(_$_MainCategory(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainCategory implements _MainCategory {
  const _$_MainCategory(
      {@JsonKey(name: 'category_id') required this.categoryId,
      required this.label});

  factory _$_MainCategory.fromJson(Map<String, dynamic> json) =>
      _$$_MainCategoryFromJson(json);

  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  final String label;

  @override
  String toString() {
    return 'MainCategory(categoryId: $categoryId, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainCategory &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainCategoryCopyWith<_$_MainCategory> get copyWith =>
      __$$_MainCategoryCopyWithImpl<_$_MainCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainCategoryToJson(
      this,
    );
  }
}

abstract class _MainCategory implements MainCategory {
  const factory _MainCategory(
      {@JsonKey(name: 'category_id') required final int categoryId,
      required final String label}) = _$_MainCategory;

  factory _MainCategory.fromJson(Map<String, dynamic> json) =
      _$_MainCategory.fromJson;

  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_MainCategoryCopyWith<_$_MainCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
