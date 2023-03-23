/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-20 16:16:22
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-20 16:22:47
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_screenshot_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest
class AppScreenshotCreateRequest {
  final AppScreenshotCreateRequestData data;

  AppScreenshotCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data
class AppScreenshotCreateRequestData {
  final AppScreenshotCreateRequestDataAttributes attributes;

  final AppScreenshotCreateRequestDataRelationships relationships;

  final String type;

  AppScreenshotCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'appScreenshots',
  });

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'relationships': relationships.toJson(),
      'attributes': attributes.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/attributes
class AppScreenshotCreateRequestDataAttributes {
  final String fileName;

  final int fileSize;

  AppScreenshotCreateRequestDataAttributes({
    required this.fileName,
    required this.fileSize,
  });

  Map<String, dynamic> toJson() {
    return {
      'fileName': fileName,
      'fileSize': fileSize,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships
class AppScreenshotCreateRequestDataRelationships {
  final AppScreenshotCreateRequestDataRelationshipsAppScreenshotSet
      appScreenshotSet;
  AppScreenshotCreateRequestDataRelationships({
    required this.appScreenshotSet,
  });

  Map<String, dynamic> toJson() {
    return {
      'appScreenshotSet': appScreenshotSet.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships/appscreenshotset
class AppScreenshotCreateRequestDataRelationshipsAppScreenshotSet {
  final AppScreenshotCreateRequestDataRelationshipsAppScreenshotSetData data;

  AppScreenshotCreateRequestDataRelationshipsAppScreenshotSet({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships/appscreenshotset/data
class AppScreenshotCreateRequestDataRelationshipsAppScreenshotSetData {
  final String id;

  final String type;

  AppScreenshotCreateRequestDataRelationshipsAppScreenshotSetData({
    required this.id,
    this.type = 'appScreenshotSets',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
