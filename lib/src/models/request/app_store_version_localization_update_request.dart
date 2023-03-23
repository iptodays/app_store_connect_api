/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 17:17:09
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-12 18:52:53
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_store_version_localization_update_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationupdaterequest
class AppStoreVersionLocalizationUpdateRequest {
  final AppStoreVersionLocalizationUpdateRequestData data;

  AppStoreVersionLocalizationUpdateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationupdaterequest/data
class AppStoreVersionLocalizationUpdateRequestData {
  final String id;

  final String type;

  AppStoreVersionLocalizationUpdateRequestDataAttributes? attributes;

  AppStoreVersionLocalizationUpdateRequestData({
    required this.id,
    this.type = 'appStoreVersionLocalizations',
    this.attributes,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationupdaterequest/data/attributes
class AppStoreVersionLocalizationUpdateRequestDataAttributes {
  String? description;

  String? keywords;

  String? marketingUrl;

  String? promotionalText;

  String? supportUrl;

  String? whatsNew;

  AppStoreVersionLocalizationUpdateRequestDataAttributes({
    this.description,
    this.keywords,
    this.marketingUrl,
    this.promotionalText,
    this.supportUrl,
    this.whatsNew,
  });

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'keywords': keywords,
      'marketingUrl': marketingUrl,
      'promotionalText': promotionalText,
      'supportUrl': supportUrl,
      'whatsNew': whatsNew,
    };
  }
}
