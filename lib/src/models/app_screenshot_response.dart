/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-20 16:23:45
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-20 16:56:26
 * @FilePath: /app_store_connect_api/lib/src/models/app_screenshot_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'builds_response.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotresponse
class AppScreenshotResponse {
  late final AppScreenshot data;

  AppScreenshotResponse.fromJson(Map<String, dynamic> json) {
    data = AppScreenshot.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot
class AppScreenshot {
  AppScreenshotAttributes? attributes;

  late final String id;

  late final String type;

  AppScreenshot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppScreenshotAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/attributes
class AppScreenshotAttributes {
  AppMediaAssetState? assetDeliveryState;

  String? assetToken;

  String? assetType;

  String? fileName;

  int? fileSize;

  ImageAsset? imageAsset;

  String? sourceFileChecksum;

  List<UploadOperation>? uploadOperations;

  AppScreenshotAttributes.fromJson(Map<String, dynamic> json) {
    assetToken = json['assetToken'];
    assetType = json['assetType'];
    fileName = json['fileName'];
    fileSize = json['fileSize'];
    sourceFileChecksum = json['sourceFileChecksum'];
    if (json['assetDeliveryState'] != null) {
      assetDeliveryState =
          AppMediaAssetState.fromJson(json['assetDeliveryState']);
    }
    if (json['imageAsset'] != null) {
      imageAsset = ImageAsset.fromJson(json['imageAsset']);
    }
    if (json['uploadOperations'] != null) {
      uploadOperations = json['uploadOperations']
          .map<UploadOperation>((v) => UploadOperation.fromJson(v))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'assetToken': assetToken,
      'assetType': assetType,
      'fileName': fileName,
      'fileSize': fileSize,
      'sourceFileChecksum': sourceFileChecksum,
      'assetDeliveryState': assetDeliveryState?.toJson(),
      'imageAsset': imageAsset?.toJson(),
      'uploadOperations': uploadOperations?.map((e) => e.toJson()).toList(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appmediaassetstate
class AppMediaAssetState {
  List<AppMediaStateError>? errors;

  String? state;

  List<AppMediaStateError>? warnings;

  AppMediaAssetState.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    if (json['errors'] != null) {
      errors = json['errors']
          .map<AppMediaStateError>((v) => AppMediaStateError.fromJson(v))
          .toList();
    }
    if (json['warnings'] != null) {
      warnings = json['warnings']
          .map<AppMediaStateError>((v) => AppMediaStateError.fromJson(v))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'errors': errors?.map((e) => e.toJson()).toList(),
      'warnings': warnings?.map((e) => e.toJson()).toList(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appmediastateerror
class AppMediaStateError {
  String? code;

  String? description;

  AppMediaStateError.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'description': description,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/uploadoperation
class UploadOperation {
  int? length;

  String? method;

  int? offset;

  String? url;

  List<HttpHeader>? requestHeaders;

  UploadOperation.fromJson(Map<String, dynamic> json) {
    length = json['length'];
    method = json['method'];
    offset = json['offset'];
    url = json['url'];
    if (json['requestHeaders'] != null) {
      requestHeaders = json['requestHeaders']
          .map<HttpHeader>((v) => HttpHeader.fromJson(v))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'length': length,
      'method': method,
      'offset': offset,
      'url': url,
      'requestHeaders': requestHeaders?.map((e) => e.toJson()).toList(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/httpheader
class HttpHeader {
  String? name;

  String? value;

  HttpHeader.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}
