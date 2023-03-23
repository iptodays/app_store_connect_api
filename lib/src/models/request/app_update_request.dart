/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 22:35:48
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-19 16:08:11
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_update_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
/// https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest
class AppUpdateRequest {
  final AppUpdateRequestData data;

  List<AppPriceInlineCreate>? included;

  AppUpdateRequest({
    required this.data,
    this.included,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
      'included': included?.map((e) => e.toJson()).toList(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data
class AppUpdateRequestData {
  final String id;

  final String type;

  AppUpdateRequestDataAttributes? attributes;

  AppUpdateRequestData({
    required this.id,
    this.type = 'apps',
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

class AppPriceInlineCreate {
  String? id;
  final String type;

  AppPriceInlineCreate({
    this.id,
    this.type = 'appPrices',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data/attributes
class AppUpdateRequestDataAttributes {
  String? bundleId;

  /// DOES_NOT_USE_THIRD_PARTY_CONTENT, USES_THIRD_PARTY_CONTENT
  String? contentRightsDeclaration;

  String? primaryLocale;

  String? subscriptionStatusUrl;

  String? subscriptionStatusUrlForSandbox;

  /// https://developer.apple.com/documentation/appstoreconnectapi/subscriptionstatusurlversion
  String? subscriptionStatusUrlVersion;

  /// https://developer.apple.com/documentation/appstoreconnectapi/subscriptionstatusurlversion
  String? subscriptionStatusUrlVersionForSandbox;

  AppUpdateRequestDataAttributes({
    this.bundleId,
    this.contentRightsDeclaration,
    this.primaryLocale,
    this.subscriptionStatusUrl,
    this.subscriptionStatusUrlForSandbox,
    this.subscriptionStatusUrlVersion,
    this.subscriptionStatusUrlVersionForSandbox,
  });

  Map<String, dynamic> toJson() {
    return {
      'bundleId': bundleId,
      'contentRightsDeclaration': contentRightsDeclaration,
      'primaryLocale': primaryLocale,
      'subscriptionStatusUrl': subscriptionStatusUrl,
      'subscriptionStatusUrlForSandbox': subscriptionStatusUrlForSandbox,
      'subscriptionStatusUrlVersion': subscriptionStatusUrlVersion,
      'subscriptionStatusUrlVersionForSandbox':
          subscriptionStatusUrlVersionForSandbox,
    };
  }
}
