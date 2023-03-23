/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 17:03:53
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-12 17:13:04
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_store_version_localization_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest
class AppStoreVersionLocalizationCreateRequest {
  final AppStoreVersionLocalizationCreateRequestData data;

  AppStoreVersionLocalizationCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest
class AppStoreVersionLocalizationCreateRequestData {
  final AppStoreVersionLocalizationCreateRequestDataAttributes attributes;

  final AppStoreVersionLocalizationCreateRequestDataRelationships relationships;

  final String type;

  AppStoreVersionLocalizationCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'appStoreVersionLocalizations',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data/attributes
class AppStoreVersionLocalizationCreateRequestDataAttributes {
  String? description;

  String? keywords;

  final String locale;

  String? marketingUrl;

  String? promotionalText;

  String? supportUrl;

  String? whatsNew;

  AppStoreVersionLocalizationCreateRequestDataAttributes({
    required this.locale,
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
      'locale': locale,
      'marketingUrl': marketingUrl,
      'promotionalText': promotionalText,
      'supportUrl': supportUrl,
      'whatsNew': whatsNew,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data
class AppStoreVersionLocalizationCreateRequestDataRelationships {
  final AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersion
      appStoreVersion;

  AppStoreVersionLocalizationCreateRequestDataRelationships({
    required this.appStoreVersion,
  });

  Map<String, dynamic> toJson() {
    return {
      'appStoreVersion': appStoreVersion.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data/relationships/appstoreversion
class AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersion {
  final AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersionData
      data;

  AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersion({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data/relationships/appstoreversion/data
class AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersionData {
  final String id;

  final String type;

  AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersionData({
    required this.id,
    this.type = 'appStoreVersions',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
