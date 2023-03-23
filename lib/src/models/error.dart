/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 14:15:35
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-11 14:16:00
 * @FilePath: /app_store_connect_api/lib/src/models/error.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
/// https://developer.apple.com/documentation/appstoreconnectapi/errorresponse/errors
class ErrorResponse {
  late final String code;

  late final String status;

  String? id;

  late final String title;

  late final String detail;

  Source? source;

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    id = json['id'];
    title = json['title'];
    detail = json['detail'];
    if (json['source'] != null) {
      source = Source.fromJson(json['source']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'status': status,
      'id': id,
      'title': title,
      'detail': detail,
      'source': source?.toJson(),
    };
  }
}

class Source {
  /// https://developer.apple.com/documentation/appstoreconnectapi/jsonpointer
  String? pointer;

  /// https://developer.apple.com/documentation/appstoreconnectapi/parameter
  String? parameter;

  Source.fromJson(Map<String, dynamic> json) {
    pointer = json['pointer'];
    parameter = json['parameter'];
  }

  Map<String, dynamic> toJson() {
    return {
      'pointer': pointer,
      'parameter': parameter,
    };
  }
}
