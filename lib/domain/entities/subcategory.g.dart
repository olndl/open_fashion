// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subcategory _$$_SubcategoryFromJson(Map<String, dynamic> json) =>
    _$_Subcategory(
      catName: json['catName'] as String,
      categoryValue: json['categoryValue'] as String,
      tagCodes:
          (json['tagCodes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SubcategoryToJson(_$_Subcategory instance) =>
    <String, dynamic>{
      'catName': instance.catName,
      'categoryValue': instance.categoryValue,
      'tagCodes': instance.tagCodes,
    };
