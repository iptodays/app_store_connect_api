/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 12:20:13
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-12 12:36:43
 * @FilePath: /app_store_connect_api/lib/src/models/app_store_versions_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsresponse
class AppStoreVersionsResponse {
  late final List<AppStoreVersion> data;

  PagingInformation? meta;

  AppStoreVersionsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data']
          .map<AppStoreVersion>((v) => AppStoreVersion.fromJson(v))
          .toList();
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionresponse
class AppStoreVersionResponse {
  late final AppStoreVersion data;

  AppStoreVersionResponse.fromJson(Map<String, dynamic> json) {
    data = AppStoreVersion.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion
class AppStoreVersion {
  AppStoreVersionAttributes? attributes;

  late final String id;

  late final String type;

  AppStoreVersion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppStoreVersionAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/attributes
class AppStoreVersionAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/platform
  String? platform;

  /// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionstate
  String? appStoreState;

  String? copyright;

  String? earliestReleaseDate;

  String? releaseType;

  String? versionString;

  String? createdDate;

  bool? downloadable;

  AppStoreVersionAttributes.fromJson(Map<String, dynamic> json) {
    platform = json['platform'];
    appStoreState = json['appStoreState'];
    copyright = json['copyright'];
    earliestReleaseDate = json['earliestReleaseDate'];
    releaseType = json['releaseType'];
    versionString = json['versionString'];
    createdDate = json['createdDate'];
    downloadable = json['downloadable'];
  }

  Map<String, dynamic> toJson() {
    return {
      'platform': platform,
      'appStoreState': appStoreState,
      'copyright': copyright,
      'earliestReleaseDate': earliestReleaseDate,
      'releaseType': releaseType,
      'versionString': versionString,
      'createdDate': createdDate,
      'downloadable': downloadable,
    };
  }
}
