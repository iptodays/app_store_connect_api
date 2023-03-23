/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-19 18:45:12
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-19 18:46:27
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_store_review_detail_update_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailupdaterequest
class AppStoreReviewDetailUpdateRequest {
  final AppStoreReviewDetailUpdateRequestData data;

  AppStoreReviewDetailUpdateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailupdaterequest/data
class AppStoreReviewDetailUpdateRequestData {
  final AppStoreReviewDetailUpdateRequestDataAttributes attributes;

  final String id;

  final String type;

  AppStoreReviewDetailUpdateRequestData({
    required this.attributes,
    required this.id,
    this.type = 'appStoreReviewDetails',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailupdaterequest/data/attributes
class AppStoreReviewDetailUpdateRequestDataAttributes {
  String? contactEmail;

  String? contactFirstName;

  String? contactLastName;

  String? contactPhone;

  String? demoAccountName;

  String? demoAccountPassword;

  bool? demoAccountRequired;

  String? notes;

  AppStoreReviewDetailUpdateRequestDataAttributes({
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
