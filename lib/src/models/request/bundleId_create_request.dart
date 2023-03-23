/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-18 14:51:08
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-23 23:34:37
 * @FilePath: /app_store_connect_api/lib/src/models/request/bundleId_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcreaterequest
class BundleIdCreateRequest {
  final BundleIdCreateRequestData data;

  BundleIdCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcreaterequest/data
class BundleIdCreateRequestData {
  final BundleIdCreateRequestDataAttributes attributes;

  final String type;

  BundleIdCreateRequestData({
    required this.attributes,
    this.type = 'bundleIds',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcreaterequest/data/attributes
class BundleIdCreateRequestDataAttributes {
  final String identifier;

  final String name;

  /// https://developer.apple.com/documentation/appstoreconnectapi/bundleidplatform
  final String platform;

  String? seedId;

  BundleIdCreateRequestDataAttributes({
    required this.identifier,
    required this.name,
    this.platform = 'IOS',
    this.seedId,
  });

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'name': name,
      'platform': platform,
      'seedId': seedId,
    };
  }
}
