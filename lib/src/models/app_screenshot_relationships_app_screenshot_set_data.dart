/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-12-08 17:21:20
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-12-08 17:22:48
 * @FilePath: /app_store_connect_api/lib/src/models/app_screenshot_relationships_app_screenshot_set_data.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/relationships/appscreenshotset/data
class AppScreenshotRelationshipsAppScreenshotSetData {
  late final String id;

  late final String type;

  AppScreenshotRelationshipsAppScreenshotSetData.fromJson(
      Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
