/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 12:26:22
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-12 12:16:41
 * @FilePath: /app_store_connect_api/lib/src/models/response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:app_store_connect_api/src/models/error.dart';

class ApiResponse<T> {
  T? result;

  List<ErrorResponse>? errors;

  late final Map<String, dynamic> json;

  ApiResponse.fromJson(
    this.json, {
    T Function(Map<String, dynamic> json)? serialization,
  }) {
    if (json['errors'] != null) {
      errors = json['errors']
          .map<ErrorResponse>((e) => ErrorResponse.fromJson(e))
          .toList();
    }
    if (errors == null && serialization != null) {
      result = serialization(json);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'errors': errors?.map((e) => e.toJson()).toList(),
      'result': json,
      'resultType': result.runtimeType.toString(),
    };
  }
}
