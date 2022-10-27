// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      catName: json['catName'] as String,
      categoryValue: json['categoryValue'] as String,
      categoriesArray: (json['categoriesArray'] as List<dynamic>)
          .map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagCodes:
          (json['tagCodes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'catName': instance.catName,
      'categoryValue': instance.categoryValue,
      'categoriesArray': instance.categoriesArray,
      'tagCodes': instance.tagCodes,
    };
