/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 17:00:36
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-24 18:32:15
 * @FilePath: /app_store_connect_api/lib/src/models/app_info_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'paging_information.dart';

class AppInfoResponse {
  late final AppInfo data;

  AppInfoResponse.fromJson(Map<String, dynamic> json) {
    data = AppInfo.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

class AppInfosResponse {
  late final List<AppInfo> data;

  PagingInformation? meta;

  AppInfosResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data'].map<AppInfo>((v) => AppInfo.fromJson(v)).toList();
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfo
class AppInfo {
  late final String id;

  late final String type;

  AppInfoAttributes? attributes;

  AppInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppInfoAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfo/attributes
class AppInfoAttributes {
  String? appStoreAgeRating;

  String? appStoreState;

  String? brazilAgeRating;

  String? brazilAgeRatingV2;

  String? kidsAgeBand;

  AppInfoAttributes.fromJson(Map<String, dynamic> json) {
    appStoreAgeRating = json['appStoreAgeRating'];
    appStoreState = json['appStoreState'];
    brazilAgeRating = json['brazilAgeRating'];
    brazilAgeRatingV2 = json['brazilAgeRatingV2'];
    kidsAgeBand = json['kidsAgeBand'];
  }

  Map<String, dynamic> toJson() {
    return {
      'appStoreAgeRating': appStoreAgeRating,
      'appStoreState': appStoreState,
      'brazilAgeRating': brazilAgeRating,
      'brazilAgeRatingV2': brazilAgeRatingV2,
      'kidsAgeBand': kidsAgeBand,
    };
  }
}
