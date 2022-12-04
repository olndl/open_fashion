import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

List<Product> productFromJson(List<dynamic> list) =>
    List<Product>.from(list.map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String brand,
    required String title,
    required Price price,
    required List<Pallete> pallete,
    @JsonKey(name: 'available_sizes') required List<String> availableSizes,
    required String description,
    required String material,
    @JsonKey(name: 'country_of_production') required String countryOfProduction,
    required Care care,
    @JsonKey(name: 'main_category') required String mainCategory,
    required List<String> subcategories,
    @JsonKey(name: 'new_arrival') required bool newArrival,
    required String image,
    required Rating rating,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Care with _$Care {
  const factory Care({
    required bool bleach,
    @JsonKey(name: 'trumble_dry') required bool trumbleDry,
    @JsonKey(name: 'dry_clean') required bool dryClean,
    @JsonKey(name: 'use_iron') required bool useIron,
  }) = _Care;

  factory Care.fromJson(Map<String, dynamic> json) => _$CareFromJson(json);
}

@freezed
class Pallete with _$Pallete {
  const factory Pallete({
    @JsonKey(name: 'color_name') required String colorName,
    @JsonKey(name: 'hex_color') required String hexColor,
  }) = _Pallete;

  factory Pallete.fromJson(Map<String, dynamic> json) =>
      _$PalleteFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({
    required double total,
    required String currency,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double rate,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
