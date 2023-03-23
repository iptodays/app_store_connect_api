/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 20:26:26
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-11 20:38:23
 * @FilePath: /app_store_connect_api/lib/src/models/builds_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/buildsresponse
class BuildsResponse {
  late final List<Build> data;

  PagingInformation? meta;

  BuildsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data'].map<Build>((v) => Build.fromJson(v)).toList();
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

/// https://developer.apple.com/documentation/appstoreconnectapi/build
class Build {
  BuildAttributes? attributes;

  late final String id;

  late final String type;

  Build.fromJson(Map<String, dynamic> json) {
    if (json['attributes'] != null) {
      attributes = BuildAttributes.fromJson(json['attributes']);
    }
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/build/attributes
class BuildAttributes {
  bool? expired;

  ImageAsset? iconAssetToken;

  String? minOsVersion;

  String? processingState;

  String? version;

  bool? usesNonExemptEncryption;

  String? uploadedDate;

  String? expirationDate;

  String? buildAudienceType;

  String? computedMinMacOsVersion;

  String? lsMinimumSystemVersion;

  BuildAttributes.fromJson(Map<String, dynamic> json) {
    expired = json['expired'];
    if (json['iconAssetToken'] != null) {
      iconAssetToken = ImageAsset.fromJson(json['iconAssetToken']);
    }
    minOsVersion = json['minOsVersion'];
    processingState = json['processingState'];
    version = json['version'];
    usesNonExemptEncryption = json['usesNonExemptEncryption'];
    uploadedDate = json['uploadedDate'];
    expirationDate = json['expirationDate'];
    buildAudienceType = json['buildAudienceType'];
    computedMinMacOsVersion = json['computedMinMacOsVersion'];
    lsMinimumSystemVersion = json['lsMinimumSystemVersion'];
  }

  Map<String, dynamic> toJson() {
    return {
      'expired': expired,
      'iconAssetToken': iconAssetToken?.toJson(),
      'minOsVersion': minOsVersion,
      'processingState': processingState,
      'version': version,
      'usesNonExemptEncryption': usesNonExemptEncryption,
      'uploadedDate': uploadedDate,
      'expirationDate': expirationDate,
      'buildAudienceType': buildAudienceType,
      'computedMinMacOsVersion': computedMinMacOsVersion,
      'lsMinimumSystemVersion': lsMinimumSystemVersion,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/imageasset
class ImageAsset {
  String? templateUrl;

  int? height;

  int? width;

  ImageAsset.fromJson(Map<String, dynamic> json) {
    templateUrl = json['templateUrl'];
    height = json['height'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    return {
      'templateUrl': templateUrl,
      'width': width,
      'height': height,
    };
  }
}
