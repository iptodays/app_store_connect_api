/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-19 17:48:23
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-19 18:37:31
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_store_review_detail_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailcreaterequest
class AppStoreReviewDetailCreateRequest {
  final AppStoreReviewDetailCreateRequestData data;

  AppStoreReviewDetailCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailcreaterequest/data
class AppStoreReviewDetailCreateRequestData {
  final AppStoreReviewDetailCreateRequestDataAttributes attributes;

  final AppStoreReviewDetailCreateRequestDataRelationships relationships;

  final String type;

  AppStoreReviewDetailCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'appStoreReviewDetails',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailcreaterequest/data/attributes
class AppStoreReviewDetailCreateRequestDataAttributes {
  String? contactEmail;

  String? contactFirstName;

  String? contactLastName;

  String? contactPhone;

  String? demoAccountName;

  String? demoAccountPassword;

  bool? demoAccountRequired;

  String? notes;

  AppStoreReviewDetailCreateRequestDataAttributes({
    this.contactEmail,
    this.contactFirstName,
    this.contactLastName,
    this.contactPhone,
    this.demoAccountName,
    this.demoAccountPassword,
    this.demoAccountRequired,
    this.notes,
  });

  Map<String, dynamic> toJson() {
    return {
      'contactEmail': contactEmail,
      'contactFirstName': contactFirstName,
      'contactLastName': contactLastName,
      'contactPhone': contactPhone,
      'demoAccountName': demoAccountName,
      'demoAccountPassword': demoAccountPassword,
      'demoAccountRequired': demoAccountRequired,
      'notes': notes,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailcreaterequest/data/relationships
class AppStoreReviewDetailCreateRequestDataRelationships {
  final AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion
      appStoreVersion;

  AppStoreReviewDetailCreateRequestDataRelationships({
    required this.appStoreVersion,
  });

  Map<String, dynamic> toJson() {
    return {
      'appStoreVersion': appStoreVersion.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailcreaterequest/data/relationships/appstoreversion
class AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion {
  final AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersionData
      data;

  AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailcreaterequest/data/relationships/appstoreversion/data
class AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersionData {
  final String id;

  final String type;

  AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersionData({
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
