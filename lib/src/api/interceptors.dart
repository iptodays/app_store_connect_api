/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 12:43:45
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-23 20:05:12
 * @FilePath: /app_store_connect_api/lib/src/api/interceptors.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:dio/dio.dart';

class ApiInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.data != null && options.data is Map) {
      options.data = removeNullValues(options.data);
      print('request data: ${options.data}');
    }
    if (options.queryParameters.isNotEmpty) {
      options.queryParameters = removeNullValues(options.queryParameters);
      print('request queryParameters: ${options.queryParameters}');
    }
    print('request headers: ${options.headers}');
    super.onRequest(options, handler);
  }

  Map<String, dynamic> removeNullValues(Map<String, dynamic> map) {
    Map<String, dynamic> v = {};
    for (var key in map.keys) {
      dynamic value = map[key];
      if (value is Map) {
        v[key] = removeNullValues(value as Map<String, dynamic>);
      } else if (value != null) {
        v[key] = value;
      }
    }
    return v;
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(err);
    super.onError(err, handler);
  }
}
