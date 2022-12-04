import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_category.freezed.dart';
part 'main_category.g.dart';

List<MainCategory> mainCategoryFromJson(List<dynamic> list) =>
    List<MainCategory>.from(list.map((x) => MainCategory.fromJson(x)));

String mainCategoryToJson(List<MainCategory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class MainCategory with _$MainCategory {
  const factory MainCategory({
    @JsonKey(name: 'category_id') required int categoryId,
    required String label,
  }) = _MainCategory;

  factory MainCategory.fromJson(Map<String, dynamic> json) =>
      _$MainCategoryFromJson(json);
}
