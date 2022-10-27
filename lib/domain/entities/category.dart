import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_fashion/domain/entities/subcategory.dart';

part 'category.freezed.dart';
part 'category.g.dart';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Category with _$Category {
  const factory Category({
    required String catName,
    required String categoryValue,
    required List<Subcategory> categoriesArray,
    required List<String> tagCodes,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
