/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-18 14:38:25
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-18 14:42:19
 * @FilePath: /app_store_connect_api/lib/src/models/request/certificate_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
/// https://developer.apple.com/documentation/appstoreconnectapi/certificatecreaterequest
class CertificateCreateRequest {
  CertificateCreateRequestData data;

  CertificateCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/certificatecreaterequest/data
class CertificateCreateRequestData {
  final CertificateCreateRequestDataAttributes attributes;

  final String type;

  CertificateCreateRequestData({
    required this.attributes,
    this.type = 'certificates',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/certificatecreaterequest/data/attributes
class CertificateCreateRequestDataAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/certificatetype
  final String certificateType;

  final String csrContent;

  CertificateCreateRequestDataAttributes({
    this.certificateType = 'IOS_DISTRIBUTION',
    required this.csrContent,
  });

  Map<String, dynamic> toJson() {
    return {
      'certificateType': certificateType,
      'csrContent': csrContent,
    };
  }
}
