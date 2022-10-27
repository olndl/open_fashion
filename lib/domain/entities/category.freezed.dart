// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get catName => throw _privateConstructorUsedError;
  String get categoryValue => throw _privateConstructorUsedError;
  List<Subcategory> get categoriesArray => throw _privateConstructorUsedError;
  List<String> get tagCodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String catName,
      String categoryValue,
      List<Subcategory> categoriesArray,
      List<String> tagCodes});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catName = null,
    Object? categoryValue = null,
    Object? categoriesArray = null,
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
      categoriesArray: null == categoriesArray
          ? _value.categoriesArray
          : categoriesArray // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
      tagCodes: null == tagCodes
          ? _value.tagCodes
          : tagCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String catName,
      String categoryValue,
      List<Subcategory> categoriesArray,
      List<String> tagCodes});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catName = null,
    Object? categoryValue = null,
    Object? categoriesArray = null,
    Object? tagCodes = null,
  }) {
    return _then(_$_Category(
      catName: null == catName
          ? _value.catName
          : catName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryValue: null == categoryValue
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesArray: null == categoriesArray
          ? _value._categoriesArray
          : categoriesArray // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
      tagCodes: null == tagCodes
          ? _value._tagCodes
          : tagCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category(
      {required this.catName,
      required this.categoryValue,
      required final List<Subcategory> categoriesArray,
      required final List<String> tagCodes})
      : _categoriesArray = categoriesArray,
        _tagCodes = tagCodes;

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String catName;
  @override
  final String categoryValue;
  final List<Subcategory> _categoriesArray;
  @override
  List<Subcategory> get categoriesArray {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesArray);
  }

  final List<String> _tagCodes;
  @override
  List<String> get tagCodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagCodes);
  }

  @override
  String toString() {
    return 'Category(catName: $catName, categoryValue: $categoryValue, categoriesArray: $categoriesArray, tagCodes: $tagCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.catName, catName) || other.catName == catName) &&
            (identical(other.categoryValue, categoryValue) ||
                other.categoryValue == categoryValue) &&
            const DeepCollectionEquality()
                .equals(other._categoriesArray, _categoriesArray) &&
            const DeepCollectionEquality().equals(other._tagCodes, _tagCodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      catName,
      categoryValue,
      const DeepCollectionEquality().hash(_categoriesArray),
      const DeepCollectionEquality().hash(_tagCodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String catName,
      required final String categoryValue,
      required final List<Subcategory> categoriesArray,
      required final List<String> tagCodes}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get catName;
  @override
  String get categoryValue;
  @override
  List<Subcategory> get categoriesArray;
  @override
  List<String> get tagCodes;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
