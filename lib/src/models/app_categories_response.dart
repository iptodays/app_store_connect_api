/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-20 14:30:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-20 14:35:14
 * @FilePath: /app_store_connect_api/lib/src/models/app_categories_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appcategoriesresponse
class AppCategoriesResponse {
  late final List<AppCategory> data;

  PagingInformation? meta;

  AppCategoriesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data']
          .map<AppCategory>((v) => AppCategory.fromJson(v))
          .toList();
    } else {
      data = [];
    }
    if (json['meta'] != null) {
      meta = PagingInformation.fromJson(json['meta']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
      'meta': meta?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appcategory
class AppCategory {
  AppCategoryAttributes? attributes;

  late final String id;

  late final String type;

  AppCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppCategoryAttributes.fromJson(json['attributes']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appcategory/attributes
class AppCategoryAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/platform
  List<String>? platforms;

  AppCategoryAttributes.fromJson(Map<String, dynamic> json) {
    platforms = json['platforms'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    return {
      'platforms': platforms,
    };
  }
}
