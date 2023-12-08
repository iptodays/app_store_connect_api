/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-12-08 17:19:24
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-12-08 17:29:20
 * @FilePath: /app_store_connect_api/lib/src/models/app_screenshot_relationships.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:app_store_connect_api_v1/src/models/app_screenshot_relationships_app_screenshot_set.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/relationships
class AppScreenshotRelationships {
  AppScreenshotRelationshipsAppScreenshotSet? appScreenshotSet;

  AppScreenshotRelationships.fromJson(Map<String, dynamic> json) {
    if (json['appScreenshotSet'] != null) {
      appScreenshotSet = AppScreenshotRelationshipsAppScreenshotSet.fromJson(
          json['appScreenshotSet']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'appScreenshotSet': appScreenshotSet?.toJson(),
    };
  }
}
