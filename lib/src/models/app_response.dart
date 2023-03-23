/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-03 17:03:13
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-11 16:37:55
 * @FilePath: /app_store_connect_api/lib/src/models/app_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appresponse
class AppResponse {
  late final App data;

  AppResponse.fromJson(Map<String, dynamic> json) {
    data = App.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appsresponse
class AppsResponse {
  late final List<App> data;

  PagingInformation? meta;

  AppsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data'].map<App>((v) => App.fromJson(v)).toList();
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

/// https://developer.apple.com/documentation/appstoreconnectapi/app
class App {
  late final String id;

  late final String type;

  AppAttributes? attributes;

  App.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/app/attributes
class AppAttributes {
  late final String bundleId;

  late String name;

  late String primaryLocale;

  late final String sku;

  String? contentRightsDeclaration;

  bool? isOrEverWasMadeForKids;

  AppAttributes.fromJson(Map<String, dynamic> json) {
    bundleId = json['bundleId'];
    name = json['name'];
    primaryLocale = json['primaryLocale'];
    sku = json['sku'];
    contentRightsDeclaration = json['contentRightsDeclaration'];
    isOrEverWasMadeForKids = json['isOrEverWasMadeForKids'];
  }

  Map<String, dynamic> toJson() {
    return {
      'bundleId': bundleId,
      'name': name,
      'primaryLocale': primaryLocale,
      'sku': sku,
      'contentRightsDeclaration': contentRightsDeclaration,
      'isOrEverWasMadeForKids': isOrEverWasMadeForKids,
    };
  }
}
