/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-12-08 17:16:01
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-12-08 18:00:33
 * @FilePath: /app_store_connect_api/lib/src/models/app_screenshots_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:app_store_connect_api_v1/src/models/app_screenshot_relationships.dart';
import 'package:app_store_connect_api_v1/src/models/app_screenshot_response.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsresponse
class AppScreenshotsResponse {
  late final List<AppScreenshot> data;

  AppScreenshotRelationships? relationships;

  AppScreenshotsResponse.fromJson(Map<String, dynamic> json) {
    data = [];
    if (json['data'] != null) {
      data.addAll(json['data']
          .map<AppScreenshot>((v) => AppScreenshot.fromJson(v))
          .toList());
    }
    if (json['relationships'] != null) {
      relationships =
          AppScreenshotRelationships.fromJson(json['relationships']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
      'relationships': relationships?.toJson(),
    };
  }
}
