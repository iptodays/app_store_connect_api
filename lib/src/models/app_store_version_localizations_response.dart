/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 16:45:21
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-12 17:01:41
 * @FilePath: /app_store_connect_api/lib/src/models/app_store_version_localizations_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationresponse
class AppStoreVersionLocalizationResponse {
  late final AppStoreVersionLocalization data;

  AppStoreVersionLocalizationResponse.fromJson(Map<String, dynamic> json) {
    data = AppStoreVersionLocalization.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/list_all_app_store_version_localizations_for_an_app_store_version
class AppStoreVersionLocalizationsResponse {
  late final List<AppStoreVersionLocalization> data;

  PagingInformation? meta;

  AppStoreVersionLocalizationsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data']
          .map<AppStoreVersionLocalization>(
              (v) => AppStoreVersionLocalization.fromJson(v))
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization
class AppStoreVersionLocalization {
  AppStoreVersionLocalizationAttributes? attributes;

  late final String id;

  late final String type;

  AppStoreVersionLocalization.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes =
          AppStoreVersionLocalizationAttributes.fromJson(json['attributes']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes?.toJson(),
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/attributes
class AppStoreVersionLocalizationAttributes {
  String? description;

  String? keywords;

  String? locale;

  String? marketingUrl;

  String? promotionalText;

  String? supportUrl;

  String? whatsNew;

  AppStoreVersionLocalizationAttributes.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    keywords = json['keywords'];
    locale = json['locale'];
    marketingUrl = json['marketingUrl'];
    promotionalText = json['promotionalText'];
    supportUrl = json['supportUrl'];
    whatsNew = json['whatsNew'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'keywords': keywords,
      'locale': locale,
      'marketingUrl': marketingUrl,
      'promotionalText': promotionalText,
      'supportUrl': supportUrl,
      'whatsNew': whatsNew,
    };
  }
}
