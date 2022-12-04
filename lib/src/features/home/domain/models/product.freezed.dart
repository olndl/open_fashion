// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  List<Pallete> get pallete => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_sizes')
  List<String> get availableSizes => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get material => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_of_production')
  String get countryOfProduction => throw _privateConstructorUsedError;
  Care get care => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  String get mainCategory => throw _privateConstructorUsedError;
  List<String> get subcategories => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_arrival')
  bool get newArrival => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String brand,
      String title,
      Price price,
      List<Pallete> pallete,
      @JsonKey(name: 'available_sizes') List<String> availableSizes,
      String description,
      String material,
      @JsonKey(name: 'country_of_production') String countryOfProduction,
      Care care,
      @JsonKey(name: 'main_category') String mainCategory,
      List<String> subcategories,
      @JsonKey(name: 'new_arrival') bool newArrival,
      String image,
      Rating rating});

  $PriceCopyWith<$Res> get price;
  $CareCopyWith<$Res> get care;
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? title = null,
    Object? price = null,
    Object? pallete = null,
    Object? availableSizes = null,
    Object? description = null,
    Object? material = null,
    Object? countryOfProduction = null,
    Object? care = null,
    Object? mainCategory = null,
    Object? subcategories = null,
    Object? newArrival = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      pallete: null == pallete
          ? _value.pallete
          : pallete // ignore: cast_nullable_to_non_nullable
              as List<Pallete>,
      availableSizes: null == availableSizes
          ? _value.availableSizes
          : availableSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      countryOfProduction: null == countryOfProduction
          ? _value.countryOfProduction
          : countryOfProduction // ignore: cast_nullable_to_non_nullable
              as String,
      care: null == care
          ? _value.care
          : care // ignore: cast_nullable_to_non_nullable
              as Care,
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      newArrival: null == newArrival
          ? _value.newArrival
          : newArrival // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CareCopyWith<$Res> get care {
    return $CareCopyWith<$Res>(_value.care, (value) {
      return _then(_value.copyWith(care: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String brand,
      String title,
      Price price,
      List<Pallete> pallete,
      @JsonKey(name: 'available_sizes') List<String> availableSizes,
      String description,
      String material,
      @JsonKey(name: 'country_of_production') String countryOfProduction,
      Care care,
      @JsonKey(name: 'main_category') String mainCategory,
      List<String> subcategories,
      @JsonKey(name: 'new_arrival') bool newArrival,
      String image,
      Rating rating});

  @override
  $PriceCopyWith<$Res> get price;
  @override
  $CareCopyWith<$Res> get care;
  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? title = null,
    Object? price = null,
    Object? pallete = null,
    Object? availableSizes = null,
    Object? description = null,
    Object? material = null,
    Object? countryOfProduction = null,
    Object? care = null,
    Object? mainCategory = null,
    Object? subcategories = null,
    Object? newArrival = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      pallete: null == pallete
          ? _value._pallete
          : pallete // ignore: cast_nullable_to_non_nullable
              as List<Pallete>,
      availableSizes: null == availableSizes
          ? _value._availableSizes
          : availableSizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      countryOfProduction: null == countryOfProduction
          ? _value.countryOfProduction
          : countryOfProduction // ignore: cast_nullable_to_non_nullable
              as String,
      care: null == care
          ? _value.care
          : care // ignore: cast_nullable_to_non_nullable
              as Care,
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      newArrival: null == newArrival
          ? _value.newArrival
          : newArrival // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.brand,
      required this.title,
      required this.price,
      required final List<Pallete> pallete,
      @JsonKey(name: 'available_sizes')
          required final List<String> availableSizes,
      required this.description,
      required this.material,
      @JsonKey(name: 'country_of_production')
          required this.countryOfProduction,
      required this.care,
      @JsonKey(name: 'main_category')
          required this.mainCategory,
      required final List<String> subcategories,
      @JsonKey(name: 'new_arrival')
          required this.newArrival,
      required this.image,
      required this.rating})
      : _pallete = pallete,
        _availableSizes = availableSizes,
        _subcategories = subcategories;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int id;
  @override
  final String brand;
  @override
  final String title;
  @override
  final Price price;
  final List<Pallete> _pallete;
  @override
  List<Pallete> get pallete {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pallete);
  }

  final List<String> _availableSizes;
  @override
  @JsonKey(name: 'available_sizes')
  List<String> get availableSizes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSizes);
  }

  @override
  final String description;
  @override
  final String material;
  @override
  @JsonKey(name: 'country_of_production')
  final String countryOfProduction;
  @override
  final Care care;
  @override
  @JsonKey(name: 'main_category')
  final String mainCategory;
  final List<String> _subcategories;
  @override
  List<String> get subcategories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  @JsonKey(name: 'new_arrival')
  final bool newArrival;
  @override
  final String image;
  @override
  final Rating rating;

  @override
  String toString() {
    return 'Product(id: $id, brand: $brand, title: $title, price: $price, pallete: $pallete, availableSizes: $availableSizes, description: $description, material: $material, countryOfProduction: $countryOfProduction, care: $care, mainCategory: $mainCategory, subcategories: $subcategories, newArrival: $newArrival, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._pallete, _pallete) &&
            const DeepCollectionEquality()
                .equals(other._availableSizes, _availableSizes) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.countryOfProduction, countryOfProduction) ||
                other.countryOfProduction == countryOfProduction) &&
            (identical(other.care, care) || other.care == care) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            (identical(other.newArrival, newArrival) ||
                other.newArrival == newArrival) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      brand,
      title,
      price,
      const DeepCollectionEquality().hash(_pallete),
      const DeepCollectionEquality().hash(_availableSizes),
      description,
      material,
      countryOfProduction,
      care,
      mainCategory,
      const DeepCollectionEquality().hash(_subcategories),
      newArrival,
      image,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      required final String brand,
      required final String title,
      required final Price price,
      required final List<Pallete> pallete,
      @JsonKey(name: 'available_sizes')
          required final List<String> availableSizes,
      required final String description,
      required final String material,
      @JsonKey(name: 'country_of_production')
          required final String countryOfProduction,
      required final Care care,
      @JsonKey(name: 'main_category')
          required final String mainCategory,
      required final List<String> subcategories,
      @JsonKey(name: 'new_arrival')
          required final bool newArrival,
      required final String image,
      required final Rating rating}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id;
  @override
  String get brand;
  @override
  String get title;
  @override
  Price get price;
  @override
  List<Pallete> get pallete;
  @override
  @JsonKey(name: 'available_sizes')
  List<String> get availableSizes;
  @override
  String get description;
  @override
  String get material;
  @override
  @JsonKey(name: 'country_of_production')
  String get countryOfProduction;
  @override
  Care get care;
  @override
  @JsonKey(name: 'main_category')
  String get mainCategory;
  @override
  List<String> get subcategories;
  @override
  @JsonKey(name: 'new_arrival')
  bool get newArrival;
  @override
  String get image;
  @override
  Rating get rating;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

Care _$CareFromJson(Map<String, dynamic> json) {
  return _Care.fromJson(json);
}

/// @nodoc
mixin _$Care {
  bool get bleach => throw _privateConstructorUsedError;
  @JsonKey(name: 'trumble_dry')
  bool get trumbleDry => throw _privateConstructorUsedError;
  @JsonKey(name: 'dry_clean')
  bool get dryClean => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_iron')
  bool get useIron => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CareCopyWith<Care> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareCopyWith<$Res> {
  factory $CareCopyWith(Care value, $Res Function(Care) then) =
      _$CareCopyWithImpl<$Res, Care>;
  @useResult
  $Res call(
      {bool bleach,
      @JsonKey(name: 'trumble_dry') bool trumbleDry,
      @JsonKey(name: 'dry_clean') bool dryClean,
      @JsonKey(name: 'use_iron') bool useIron});
}

/// @nodoc
class _$CareCopyWithImpl<$Res, $Val extends Care>
    implements $CareCopyWith<$Res> {
  _$CareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bleach = null,
    Object? trumbleDry = null,
    Object? dryClean = null,
    Object? useIron = null,
  }) {
    return _then(_value.copyWith(
      bleach: null == bleach
          ? _value.bleach
          : bleach // ignore: cast_nullable_to_non_nullable
              as bool,
      trumbleDry: null == trumbleDry
          ? _value.trumbleDry
          : trumbleDry // ignore: cast_nullable_to_non_nullable
              as bool,
      dryClean: null == dryClean
          ? _value.dryClean
          : dryClean // ignore: cast_nullable_to_non_nullable
              as bool,
      useIron: null == useIron
          ? _value.useIron
          : useIron // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CareCopyWith<$Res> implements $CareCopyWith<$Res> {
  factory _$$_CareCopyWith(_$_Care value, $Res Function(_$_Care) then) =
      __$$_CareCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool bleach,
      @JsonKey(name: 'trumble_dry') bool trumbleDry,
      @JsonKey(name: 'dry_clean') bool dryClean,
      @JsonKey(name: 'use_iron') bool useIron});
}

/// @nodoc
class __$$_CareCopyWithImpl<$Res> extends _$CareCopyWithImpl<$Res, _$_Care>
    implements _$$_CareCopyWith<$Res> {
  __$$_CareCopyWithImpl(_$_Care _value, $Res Function(_$_Care) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bleach = null,
    Object? trumbleDry = null,
    Object? dryClean = null,
    Object? useIron = null,
  }) {
    return _then(_$_Care(
      bleach: null == bleach
          ? _value.bleach
          : bleach // ignore: cast_nullable_to_non_nullable
              as bool,
      trumbleDry: null == trumbleDry
          ? _value.trumbleDry
          : trumbleDry // ignore: cast_nullable_to_non_nullable
              as bool,
      dryClean: null == dryClean
          ? _value.dryClean
          : dryClean // ignore: cast_nullable_to_non_nullable
              as bool,
      useIron: null == useIron
          ? _value.useIron
          : useIron // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Care implements _Care {
  const _$_Care(
      {required this.bleach,
      @JsonKey(name: 'trumble_dry') required this.trumbleDry,
      @JsonKey(name: 'dry_clean') required this.dryClean,
      @JsonKey(name: 'use_iron') required this.useIron});

  factory _$_Care.fromJson(Map<String, dynamic> json) => _$$_CareFromJson(json);

  @override
  final bool bleach;
  @override
  @JsonKey(name: 'trumble_dry')
  final bool trumbleDry;
  @override
  @JsonKey(name: 'dry_clean')
  final bool dryClean;
  @override
  @JsonKey(name: 'use_iron')
  final bool useIron;

  @override
  String toString() {
    return 'Care(bleach: $bleach, trumbleDry: $trumbleDry, dryClean: $dryClean, useIron: $useIron)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Care &&
            (identical(other.bleach, bleach) || other.bleach == bleach) &&
            (identical(other.trumbleDry, trumbleDry) ||
                other.trumbleDry == trumbleDry) &&
            (identical(other.dryClean, dryClean) ||
                other.dryClean == dryClean) &&
            (identical(other.useIron, useIron) || other.useIron == useIron));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bleach, trumbleDry, dryClean, useIron);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CareCopyWith<_$_Care> get copyWith =>
      __$$_CareCopyWithImpl<_$_Care>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CareToJson(
      this,
    );
  }
}

abstract class _Care implements Care {
  const factory _Care(
      {required final bool bleach,
      @JsonKey(name: 'trumble_dry') required final bool trumbleDry,
      @JsonKey(name: 'dry_clean') required final bool dryClean,
      @JsonKey(name: 'use_iron') required final bool useIron}) = _$_Care;

  factory _Care.fromJson(Map<String, dynamic> json) = _$_Care.fromJson;

  @override
  bool get bleach;
  @override
  @JsonKey(name: 'trumble_dry')
  bool get trumbleDry;
  @override
  @JsonKey(name: 'dry_clean')
  bool get dryClean;
  @override
  @JsonKey(name: 'use_iron')
  bool get useIron;
  @override
  @JsonKey(ignore: true)
  _$$_CareCopyWith<_$_Care> get copyWith => throw _privateConstructorUsedError;
}

Pallete _$PalleteFromJson(Map<String, dynamic> json) {
  return _Pallete.fromJson(json);
}

/// @nodoc
mixin _$Pallete {
  @JsonKey(name: 'color_name')
  String get colorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'hex_color')
  String get hexColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PalleteCopyWith<Pallete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PalleteCopyWith<$Res> {
  factory $PalleteCopyWith(Pallete value, $Res Function(Pallete) then) =
      _$PalleteCopyWithImpl<$Res, Pallete>;
  @useResult
  $Res call(
      {@JsonKey(name: 'color_name') String colorName,
      @JsonKey(name: 'hex_color') String hexColor});
}

/// @nodoc
class _$PalleteCopyWithImpl<$Res, $Val extends Pallete>
    implements $PalleteCopyWith<$Res> {
  _$PalleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? hexColor = null,
  }) {
    return _then(_value.copyWith(
      colorName: null == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PalleteCopyWith<$Res> implements $PalleteCopyWith<$Res> {
  factory _$$_PalleteCopyWith(
          _$_Pallete value, $Res Function(_$_Pallete) then) =
      __$$_PalleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'color_name') String colorName,
      @JsonKey(name: 'hex_color') String hexColor});
}

/// @nodoc
class __$$_PalleteCopyWithImpl<$Res>
    extends _$PalleteCopyWithImpl<$Res, _$_Pallete>
    implements _$$_PalleteCopyWith<$Res> {
  __$$_PalleteCopyWithImpl(_$_Pallete _value, $Res Function(_$_Pallete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? hexColor = null,
  }) {
    return _then(_$_Pallete(
      colorName: null == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pallete implements _Pallete {
  const _$_Pallete(
      {@JsonKey(name: 'color_name') required this.colorName,
      @JsonKey(name: 'hex_color') required this.hexColor});

  factory _$_Pallete.fromJson(Map<String, dynamic> json) =>
      _$$_PalleteFromJson(json);

  @override
  @JsonKey(name: 'color_name')
  final String colorName;
  @override
  @JsonKey(name: 'hex_color')
  final String hexColor;

  @override
  String toString() {
    return 'Pallete(colorName: $colorName, hexColor: $hexColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pallete &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.hexColor, hexColor) ||
                other.hexColor == hexColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, colorName, hexColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PalleteCopyWith<_$_Pallete> get copyWith =>
      __$$_PalleteCopyWithImpl<_$_Pallete>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PalleteToJson(
      this,
    );
  }
}

abstract class _Pallete implements Pallete {
  const factory _Pallete(
      {@JsonKey(name: 'color_name') required final String colorName,
      @JsonKey(name: 'hex_color') required final String hexColor}) = _$_Pallete;

  factory _Pallete.fromJson(Map<String, dynamic> json) = _$_Pallete.fromJson;

  @override
  @JsonKey(name: 'color_name')
  String get colorName;
  @override
  @JsonKey(name: 'hex_color')
  String get hexColor;
  @override
  @JsonKey(ignore: true)
  _$$_PalleteCopyWith<_$_Pallete> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  double get total => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({double total, String currency});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double total, String currency});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_$_Price(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Price implements _Price {
  const _$_Price({required this.total, required this.currency});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

  @override
  final double total;
  @override
  final String currency;

  @override
  String toString() {
    return 'Price(total: $total, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {required final double total, required final String currency}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override
  double get total;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  double get rate => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$_Rating>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_$_Rating(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  const _$_Rating({required this.rate, required this.count});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  final double rate;
  @override
  final int count;

  @override
  String toString() {
    return 'Rating(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {required final double rate, required final int count}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  double get rate;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}
