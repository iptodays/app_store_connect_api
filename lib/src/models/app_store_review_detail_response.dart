/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 16:45:21
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-12 16:56:05
 * @FilePath: /app_store_connect_api/lib/src/models/app_store_review_detail_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailresponse
class AppStoreReviewDetailResponse {
  late final AppStoreReviewDetail data;

  AppStoreReviewDetailResponse.fromJson(Map<String, dynamic> json) {
    data = AppStoreReviewDetail.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail
class AppStoreReviewDetail {
  AppStoreReviewDetailAttributes? attributes;

  late final String id;

  late final String type;

  AppStoreReviewDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppStoreReviewDetailAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/attributes
class AppStoreReviewDetailAttributes {
  String? contactEmail;

  String? contactFirstName;

  String? contactLastName;

  String? contactPhone;

  String? demoAccountName;

  String? demoAccountPassword;

  bool? demoAccountRequired;

  String? notes;

  AppStoreReviewDetailAttributes.fromJson(Map<String, dynamic> json) {
    contactEmail = json['contactEmail'];
    contactFirstName = json['contactFirstName'];
    contactLastName = json['contactLastName'];
    contactPhone = json['contactPhone'];
    demoAccountName = json['demoAccountName'];
    demoAccountPassword = json['demoAccountPassword'];
    demoAccountRequired = json['demoAccountRequired'];
    notes = json['notes'];
  }

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
