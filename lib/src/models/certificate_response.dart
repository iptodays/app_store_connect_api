/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 15:36:52
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-11 16:38:26
 * @FilePath: /app_store_connect_api/lib/src/models/certificate_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'paging_information.dart';

/// https://developer.apple.com/documentation/appstoreconnectapi/certificateresponse
class CertificateResponse {
  late final Certificate data;

  CertificateResponse.fromJson(Map<String, dynamic> json) {
    data = Certificate.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/certificatesresponse
class CertificatesResponse {
  late final List<Certificate> data;

  PagingInformation? meta;

  CertificatesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data']
          .map<Certificate>((v) => Certificate.fromJson(v))
          .toList();
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

/// https://developer.apple.com/documentation/appstoreconnectapi/certificate
class Certificate {
  CertificateAttributes? attributes;

  late final String id;

  late final String type;

  Certificate.fromJson(Map<String, dynamic> json) {
    if (json['attributes'] != null) {
      attributes = CertificateAttributes.fromJson(json['attributes']);
    }
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes,
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/certificate/attributes
class CertificateAttributes {
  String? certificateContent;

  String? displayName;

  String? expirationDate;

  String? name;

  String? platform;

  String? serialNumber;

  String? certificateType;

  CertificateAttributes.fromJson(Map<String, dynamic> json) {
    certificateContent = json['certificateContent'];
    displayName = json['displayName'];
    expirationDate = json['expirationDate'];
    name = json['name'];
    platform = json['platform'];
    serialNumber = json['serialNumber'];
    certificateType = json['certificateType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'certificateContent': certificateContent,
      'displayName': displayName,
      'expirationDate': expirationDate,
      'name': name,
      'platform': platform,
      'serialNumber': serialNumber,
      'certificateType': certificateType,
    };
  }
}
