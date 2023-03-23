/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 22:46:53
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-23 23:34:32
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_info_localization_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest
class AppInfoLocalizationCreateRequest {
  final AppInfoLocalizationCreateRequestData data;

  AppInfoLocalizationCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data
class AppInfoLocalizationCreateRequestData {
  final AppInfoLocalizationCreateRequestDataAttributes attributes;

  final AppInfoLocalizationCreateRequestDataRelationships relationships;

  final String type;

  AppInfoLocalizationCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'appInfoLocalizations',
  });

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data
class AppInfoLocalizationCreateRequestDataAttributes {
  final String locale;

  String? name;

  String? privacyPolicyText;

  String? privacyPolicyUrl;

  String? subtitle;

  String? privacyChoicesUrl;

  AppInfoLocalizationCreateRequestDataAttributes({
    required this.locale,
    this.name,
    this.privacyPolicyText,
    this.privacyPolicyUrl,
    this.subtitle,
    this.privacyChoicesUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'locale': locale,
      'name': name,
      'privacyPolicyText': privacyPolicyText,
      'privacyPolicyUrl': privacyPolicyUrl,
      'subtitle': subtitle,
      'privacyChoicesUrl': privacyChoicesUrl,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data/relationships
class AppInfoLocalizationCreateRequestDataRelationships {
  final AppInfoLocalizationCreateRequestDataRelationshipsAppInfo appInfo;

  AppInfoLocalizationCreateRequestDataRelationships({
    required this.appInfo,
  });

  Map<String, dynamic> toJson() {
    return {
      'appInfo': appInfo.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data/relationships/appinfo
class AppInfoLocalizationCreateRequestDataRelationshipsAppInfo {
  final AppInfoLocalizationCreateRequestDataRelationshipsAppInfoData data;

  AppInfoLocalizationCreateRequestDataRelationshipsAppInfo({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data/relationships/appinfo/data
class AppInfoLocalizationCreateRequestDataRelationshipsAppInfoData {
  final String id;

  final String type;

  AppInfoLocalizationCreateRequestDataRelationshipsAppInfoData({
    required this.id,
    this.type = 'appInfos',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
