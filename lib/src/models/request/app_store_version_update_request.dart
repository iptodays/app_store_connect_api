/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 13:05:10
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-12 15:26:52
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_store_version_update_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest
class AppStoreVersionUpdateRequest {
  final AppStoreVersionUpdateRequestData data;

  AppStoreVersionUpdateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest/data
class AppStoreVersionUpdateRequestData {
  AppStoreVersionUpdateRequestDataAttributes? attributes;

  AppStoreVersionUpdateRequestDataRelationships? relationships;

  final String id;

  final String type;

  AppStoreVersionUpdateRequestData({
    required this.id,
    this.type = 'appStoreVersions',
    this.attributes,
    this.relationships,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes?.toJson(),
      'relationships': relationships?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest/data/attributes
class AppStoreVersionUpdateRequestDataAttributes {
  String? copyright;

  String? earliestReleaseDate;

  ///  MANUAL, AFTER_APPROVAL, SCHEDULED
  String? releaseType;

  String? versionString;

  bool? downloadable;

  AppStoreVersionUpdateRequestDataAttributes({
    this.copyright,
    this.earliestReleaseDate,
    this.releaseType,
    this.versionString,
    this.downloadable,
  });

  Map<String, dynamic> toJson() {
    return {
      'copyright': copyright,
      'earliestReleaseDate': earliestReleaseDate,
      'releaseType': releaseType,
      'versionString': versionString,
      'downloadable': downloadable,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest/data/relationships
class AppStoreVersionUpdateRequestDataRelationships {
  AppStoreVersionUpdateRequestDataRelationshipsBuild? build;

  AppStoreVersionUpdateRequestDataRelationshipsAppClipDefaultExperience?
      appClipDefaultExperience;

  AppStoreVersionUpdateRequestDataRelationships({
    this.build,
    this.appClipDefaultExperience,
  });

  Map<String, dynamic> toJson() {
    return {
      'build': build?.toJson(),
      'appClipDefaultExperience': appClipDefaultExperience?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest/data/relationships/build
class AppStoreVersionUpdateRequestDataRelationshipsBuild {
  final AppStoreVersionUpdateRequestDataRelationshipsBuildData data;

  AppStoreVersionUpdateRequestDataRelationshipsBuild({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest/data/relationships/build/data
class AppStoreVersionUpdateRequestDataRelationshipsBuildData {
  final String id;

  final String type;

  AppStoreVersionUpdateRequestDataRelationshipsBuildData({
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest/data/relationships/appclipdefaultexperience
class AppStoreVersionUpdateRequestDataRelationshipsAppClipDefaultExperience {
  final AppStoreVersionUpdateRequestDataRelationshipsAppClipDefaultExperienceData
      data;

  AppStoreVersionUpdateRequestDataRelationshipsAppClipDefaultExperience({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionupdaterequest/data/relationships/appclipdefaultexperience/data
class AppStoreVersionUpdateRequestDataRelationshipsAppClipDefaultExperienceData {
  final String id;

  final String type;

  AppStoreVersionUpdateRequestDataRelationshipsAppClipDefaultExperienceData({
    required this.id,
    this.type = 'appClipDefaultExperiences',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
