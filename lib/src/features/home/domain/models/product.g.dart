// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      brand: json['brand'] as String,
      title: json['title'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      pallete: (json['pallete'] as List<dynamic>)
          .map((e) => Pallete.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableSizes: (json['available_sizes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String,
      material: json['material'] as String,
      countryOfProduction: json['country_of_production'] as String,
      care: Care.fromJson(json['care'] as Map<String, dynamic>),
      mainCategory: json['main_category'] as String,
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      newArrival: json['new_arrival'] as bool,
      image: json['image'] as String,
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'title': instance.title,
      'price': instance.price,
      'pallete': instance.pallete,
      'available_sizes': instance.availableSizes,
      'description': instance.description,
      'material': instance.material,
      'country_of_production': instance.countryOfProduction,
      'care': instance.care,
      'main_category': instance.mainCategory,
      'subcategories': instance.subcategories,
      'new_arrival': instance.newArrival,
      'image': instance.image,
      'rating': instance.rating,
    };

_$_Care _$$_CareFromJson(Map<String, dynamic> json) => _$_Care(
      bleach: json['bleach'] as bool,
      trumbleDry: json['trumble_dry'] as bool,
      dryClean: json['dry_clean'] as bool,
      useIron: json['use_iron'] as bool,
    );

Map<String, dynamic> _$$_CareToJson(_$_Care instance) => <String, dynamic>{
      'bleach': instance.bleach,
      'trumble_dry': instance.trumbleDry,
      'dry_clean': instance.dryClean,
      'use_iron': instance.useIron,
    };

_$_Pallete _$$_PalleteFromJson(Map<String, dynamic> json) => _$_Pallete(
      colorName: json['color_name'] as String,
      hexColor: json['hex_color'] as String,
    );

Map<String, dynamic> _$$_PalleteToJson(_$_Pallete instance) =>
    <String, dynamic>{
      'color_name': instance.colorName,
      'hex_color': instance.hexColor,
    };

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      total: (json['total'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'total': instance.total,
      'currency': instance.currency,
    };

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
