/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-18 15:36:52
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-18 16:38:23
 * @FilePath: /app_store_connect_api/lib/src/models/request/bundleId_capability_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'capability_setting.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest
class BundleIdCapabilityCreateRequest {
  final BundleIdCapabilityCreateRequestData data;

  BundleIdCapabilityCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data
class BundleIdCapabilityCreateRequestData {
  final BundleIdCapabilityCreateRequestDataAttributes attributes;

  final BundleIdCapabilityCreateRequestDataRelationships relationships;

  final String type;

  BundleIdCapabilityCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'bundleIdCapabilities',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/attributes
class BundleIdCapabilityCreateRequestDataAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/capabilitytype
  final String capabilityType;

  List<CapabilitySetting>? settings;

  BundleIdCapabilityCreateRequestDataAttributes({
    required this.capabilityType,
    this.settings,
  });

  Map<String, dynamic> toJson() {
    return {
      'capabilityType': capabilityType,
      'settings': settings?.map((e) => e.toJson()).toList(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/relationships
class BundleIdCapabilityCreateRequestDataRelationships {
  final BundleIdCapabilityCreateRequestDataRelationshipsBundleId bundleId;

  BundleIdCapabilityCreateRequestDataRelationships({
    required this.bundleId,
  });

  Map<String, dynamic> toJson() {
    return {
      'bundleId': bundleId.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/relationships/bundleid
class BundleIdCapabilityCreateRequestDataRelationshipsBundleId {
  final BundleIdCapabilityCreateRequestDataRelationshipsBundleIdData data;

  BundleIdCapabilityCreateRequestDataRelationshipsBundleId({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/relationships/bundleid/data
class BundleIdCapabilityCreateRequestDataRelationshipsBundleIdData {
  final String id;

  final String type;

  BundleIdCapabilityCreateRequestDataRelationshipsBundleIdData({
    required this.id,
    this.type = 'bundleIds',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
