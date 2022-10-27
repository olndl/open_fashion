// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subcategory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return _Subcategory.fromJson(json);
}

/// @nodoc
mixin _$Subcategory {
  String get catName => throw _privateConstructorUsedError;
  String get categoryValue => throw _privateConstructorUsedError;
  List<String> get tagCodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res, Subcategory>;
  @useResult
  $Res call({String catName, String categoryValue, List<String> tagCodes});
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res, $Val extends Subcategory>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catName = null,
    Object? categoryValue = null,
    Object? tagCodes = null,
  }) {
    return _then(_value.copyWith(
      catName: null == catName
          ? _value.catName
          : catName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryValue: null == categoryValue
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
      tagCodes: null == tagCodes
          ? _value.tagCodes
          : tagCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubcategoryCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$_SubcategoryCopyWith(
          _$_Subcategory value, $Res Function(_$_Subcategory) then) =
      __$$_SubcategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String catName, String categoryValue, List<String> tagCodes});
}

/// @nodoc
class __$$_SubcategoryCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$_Subcategory>
    implements _$$_SubcategoryCopyWith<$Res> {
  __$$_SubcategoryCopyWithImpl(
      _$_Subcategory _value, $Res Function(_$_Subcategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catName = null,
    Object? categoryValue = null,
    Object? tagCodes = null,
  }) {
    return _then(_$_Subcategory(
      catName: null == catName
          ? _value.catName
          : catName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryValue: null == categoryValue
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
      tagCodes: null == tagCodes
          ? _value._tagCodes
          : tagCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subcategory implements _Subcategory {
  const _$_Subcategory(
      {required this.catName,
      required this.categoryValue,
      required final List<String> tagCodes})
      : _tagCodes = tagCodes;

  factory _$_Subcategory.fromJson(Map<String, dynamic> json) =>
      _$$_SubcategoryFromJson(json);

  @override
  final String catName;
  @override
  final String categoryValue;
  final List<String> _tagCodes;
  @override
  List<String> get tagCodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagCodes);
  }

  @override
  String toString() {
    return 'Subcategory(catName: $catName, categoryValue: $categoryValue, tagCodes: $tagCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subcategory &&
            (identical(other.catName, catName) || other.catName == catName) &&
            (identical(other.categoryValue, categoryValue) ||
                other.categoryValue == categoryValue) &&
            const DeepCollectionEquality().equals(other._tagCodes, _tagCodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, catName, categoryValue,
      const DeepCollectionEquality().hash(_tagCodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubcategoryCopyWith<_$_Subcategory> get copyWith =>
      __$$_SubcategoryCopyWithImpl<_$_Subcategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubcategoryToJson(
      this,
    );
  }
}

abstract class _Subcategory implements Subcategory {
  const factory _Subcategory(
      {required final String catName,
      required final String categoryValue,
      required final List<String> tagCodes}) = _$_Subcategory;

  factory _Subcategory.fromJson(Map<String, dynamic> json) =
      _$_Subcategory.fromJson;

  @override
  String get catName;
  @override
  String get categoryValue;
  @override
  List<String> get tagCodes;
  @override
  @JsonKey(ignore: true)
  _$$_SubcategoryCopyWith<_$_Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}
