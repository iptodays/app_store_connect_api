/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 14:20:35
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-11 16:37:23
 * @FilePath: /app_store_connect_api/lib/src/models/bundle_id_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidresponse
class BundleIdResponse {
  late final BundleId data;

  BundleIdResponse.fromJson(Map<String, dynamic> json) {
    data = BundleId.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleidsresponse
class BundleIdsResponse {
  late final List<BundleId> data;

  PagingInformation? meta;

  BundleIdsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data'].map<BundleId>((v) => BundleId.fromJson(v)).toList();
    } else {
      data = [];
    }
    if (json['meta'] != null) {
      meta = PagingInformation.fromJson(json['meta']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
      'meta': meta?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleid
class BundleId {
  late final String id;

  late final String type;

  BundleIdAttributes? attributes;

  BundleId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = BundleIdAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/bundleid/attributes
class BundleIdAttributes {
  String? identifier;

  String? name;

  String? platform;

  String? seedId;

  BundleIdAttributes.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
    name = json['name'];
    platform = json['platform'];
    seedId = json['seedId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'name': name,
      'platform': platform,
      'seedId': seedId,
    };
  }
}
