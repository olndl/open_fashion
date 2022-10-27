import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory.freezed.dart';
part 'subcategory.g.dart';

Subcategory subcategoryFromJson(String str) =>
    Subcategory.fromJson(json.decode(str));

String subcategoryToJson(Subcategory data) => json.encode(data.toJson());

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    required String catName,
    required String categoryValue,
    required List<String> tagCodes,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
