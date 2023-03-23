/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-13 15:59:35
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-15 18:58:13
 * @FilePath: /app_store_connect_api/lib/src/models/app_preview_sets_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/apppreviewsetsresponse
class AppPreviewSetsResponse {
  late final List<AppPreviewSet> data;

  PagingInformation? meta;

  AppPreviewSetsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data']
          .map<AppPreviewSet>((v) => AppPreviewSet.fromJson(v))
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

/// https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset
class AppPreviewSet {
  AppPreviewSetAttributes? attributes;

  late final String id;

  late final String type;

  AppPreviewSet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppPreviewSetAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/attributes
class AppPreviewSetAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/previewtype
  String? previewType;

  AppPreviewSetAttributes.fromJson(Map<String, dynamic> json) {
    previewType = json['previewType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'previewType': previewType,
    };
  }
}
