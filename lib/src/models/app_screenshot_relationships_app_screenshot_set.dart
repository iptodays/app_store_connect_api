/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-12-08 17:20:18
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-12-08 17:28:19
 * @FilePath: /app_store_connect_api/lib/src/models/app_screenshot_relationships_app_screenshot_set.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:app_store_connect_api_v1/src/models/app_screenshot_relationships_app_screenshot_set_data.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/relationships/appscreenshotset
class AppScreenshotRelationshipsAppScreenshotSet {
  AppScreenshotRelationshipsAppScreenshotSetData? data;

  AppScreenshotRelationshipsAppScreenshotSet.fromJson(
      Map<String, dynamic> json) {
    if (json['data'] != null) {
      data =
          AppScreenshotRelationshipsAppScreenshotSetData.fromJson(json['data']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}
