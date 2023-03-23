/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-23 13:40:22
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-23 21:50:56
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_screenshot_update_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
class AppScreenshotUpdateRequest {
  final AppScreenshotUpdateRequestData data;

  AppScreenshotUpdateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

class AppScreenshotUpdateRequestData {
  final AppScreenshotUpdateRequestDataAttributes attributes;

  final String type;

  final String id;

  AppScreenshotUpdateRequestData({
    required this.attributes,
    this.type = 'appScreenshots',
    required this.id,
  });

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes.toJson(),
    };
  }
}

class AppScreenshotUpdateRequestDataAttributes {
  final bool uploaded;

  final String sourceFileChecksum;

  AppScreenshotUpdateRequestDataAttributes({
    required this.sourceFileChecksum,
    this.uploaded = true,
  });

  Map<String, dynamic> toJson() {
    return {
      'uploaded': uploaded,
      'sourceFileChecksum': sourceFileChecksum,
    };
  }
}
