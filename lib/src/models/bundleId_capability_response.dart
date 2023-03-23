/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-18 16:12:02
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-23 23:34:24
 * @FilePath: /app_store_connect_api/lib/src/models/bundleId_capability_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'request/capability_setting.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilityresponse
class BundleIdCapabilityResponse {
  late final BundleIdCapability data;

  BundleIdCapabilityResponse.fromJson(Map<String, dynamic> json) {
    data = BundleIdCapability.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapability
class BundleIdCapability {
  BundleIdCapabilityAttributes? attributes;

  late final String id;

  late final String type;

  BundleIdCapability.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = BundleIdCapabilityAttributes.fromJson(json['attributes']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapability/attributes
class BundleIdCapabilityAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/capabilitytype
  String? capabilityType;

  List<CapabilitySetting>? settings;

  BundleIdCapabilityAttributes.fromJson(Map<String, dynamic> json) {
    capabilityType = json['capabilityType'];
    if (json['settings'] != null) {
      settings = json['settings']
          .map<CapabilitySetting>((v) => CapabilitySetting.fromJson(v))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'capabilityType': capabilityType,
      'settings': settings?.map((e) => e.toJson()).toList(),
    };
  }
}
