/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 12:40:08
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-19 14:37:54
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_store_version_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest
class AppStoreVersionCreateRequest {
  final AppStoreVersionCreateRequestData data;

  AppStoreVersionCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data
class AppStoreVersionCreateRequestData {
  final AppStoreVersionCreateRequestDataAttributes attributes;

  final AppStoreVersionCreateRequestDataRelationships relationships;

  final String type;

  AppStoreVersionCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'appStoreVersions',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/attributes
class AppStoreVersionCreateRequestDataAttributes {
  String? copyright;

  String? earliestReleaseDate;

  /// https://developer.apple.com/documentation/appstoreconnectapi/platform
  final String platform;

  /// MANUAL, AFTER_APPROVAL, SCHEDULED
  final String releaseType;

  final String versionString;

  AppStoreVersionCreateRequestDataAttributes({
    this.copyright,
    this.earliestReleaseDate,
    this.platform = 'IOS',
    this.releaseType = 'MANUAL',
    required this.versionString,
  });

  Map<String, dynamic> toJson() {
    return {
      'copyright': copyright,
      'earliestReleaseDate': earliestReleaseDate,
      'platform': platform,
      'releaseType': releaseType,
      'versionString': versionString,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships
class AppStoreVersionCreateRequestDataRelationships {
  final AppStoreVersionCreateRequestDataRelationshipsApp app;

  AppStoreVersionCreateRequestDataRelationshipsBuild? build;

  AppStoreVersionCreateRequestDataRelationshipsAppStoreVersionLocalizations?
      appStoreVersionLocalizations;

  AppStoreVersionCreateRequestDataRelationships({
    required this.app,
    this.build,
    this.appStoreVersionLocalizations,
  });

  Map<String, dynamic> toJson() {
    return {
      'app': app.toJson(),
      'build': build?.toJson(),
      'appStoreVersionLocalizations': appStoreVersionLocalizations?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/app
class AppStoreVersionCreateRequestDataRelationshipsApp {
  final AppStoreVersionCreateRequestDataRelationshipsAppData data;

  AppStoreVersionCreateRequestDataRelationshipsApp({required this.data});

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/app/data
class AppStoreVersionCreateRequestDataRelationshipsAppData {
  final String id;

  final String type;

  AppStoreVersionCreateRequestDataRelationshipsAppData({
    required this.id,
    this.type = 'apps',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/build
class AppStoreVersionCreateRequestDataRelationshipsBuild {
  final AppStoreVersionCreateRequestDataRelationshipsBuildData data;

  AppStoreVersionCreateRequestDataRelationshipsBuild({required this.data});

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/build/data
class AppStoreVersionCreateRequestDataRelationshipsBuildData {
  final String id;

  final String type;

  AppStoreVersionCreateRequestDataRelationshipsBuildData({
    required this.id,
    this.type = 'builds',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/appstoreversionlocalizations
class AppStoreVersionCreateRequestDataRelationshipsAppStoreVersionLocalizations {
  final AppStoreVersionCreateRequestDataRelationshipsAppStoreVersionLocalizationsData
      data;

  AppStoreVersionCreateRequestDataRelationshipsAppStoreVersionLocalizations(
      {required this.data});

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/appstoreversionlocalizations/data
class AppStoreVersionCreateRequestDataRelationshipsAppStoreVersionLocalizationsData {
  final String id;

  final String type;

  AppStoreVersionCreateRequestDataRelationshipsAppStoreVersionLocalizationsData({
    required this.id,
    this.type = 'appStoreVersionLocalizations',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
