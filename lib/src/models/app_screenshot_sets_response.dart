/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 19:01:27
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-13 14:34:01
 * @FilePath: /app_store_connect_api/lib/src/models/app_screenshot_sets_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetsresponse
class AppScreenshotSetsResponse {
  late final List<AppScreenshotSet> data;

  PagingInformation? meta;

  AppScreenshotSetsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data']
          .map<AppScreenshotSet>((v) => AppScreenshotSet.fromJson(v))
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset
class AppScreenshotSet {
  AppScreenshotSetAttributes? attributes;

  late final String id;

  late final String type;

  AppScreenshotSet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/attributes
class AppScreenshotSetAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/screenshotdisplaytype
  String? screenshotDisplayType;

  AppScreenshotSetAttributes.fromJson(Map<String, dynamic> json) {
    screenshotDisplayType = json['screenshotDisplayType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'screenshotDisplayType': screenshotDisplayType,
    };
  }
}
