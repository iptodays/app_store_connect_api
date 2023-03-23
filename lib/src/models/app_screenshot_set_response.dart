/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-20 16:07:17
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-20 16:12:51
 * @FilePath: /app_store_connect_api/lib/src/models/app_screenshot_set_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetresponse
class AppScreenshotSetResponse {
  late final AppScreenshotSet data;

  AppScreenshotSetResponse.fromJson(Map<String, dynamic> json) {
    data = AppScreenshotSet.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
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
    if (json['attributes'] != null) {
      attributes = AppScreenshotSetAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/attributes
class AppScreenshotSetAttributes {
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
