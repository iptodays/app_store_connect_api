/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-02-28 19:54:56
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-21 00:20:11
 * @FilePath: /app_store_connect_api/lib/src/api/api.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:app_store_connect_api/src/api/interceptors.dart';

import '../models/response.dart';
import 'package:dio/dio.dart';

export '../models/response.dart';

class Api {
  late final Dio _dio;

  Api({
    required String signedToken,
  }) {
    _dio = Dio(
      BaseOptions(
        headers: {
          'Authorization': 'Bearer $signedToken',
        },
        contentType: 'application/json',
        responseType: ResponseType.json,
        baseUrl: 'https://api.appstoreconnect.apple.com/v1',
        sendTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
      ),
    );
    _dio.interceptors.add(ApiInterceptor());
  }

  Future<ApiResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    T Function(Map<String, dynamic>)? serialization,
  }) async {
    Response response = await _dio
        .get(
      path,
      queryParameters: queryParameters,
      data: data,
    )
        .onError(
      (error, stackTrace) {
        if (error is DioError && error.response != null) {
          return error.response!;
        }
        return Response(
          statusCode: 10001,
          requestOptions: RequestOptions(
            baseUrl: _dio.options.baseUrl,
            path: path,
            data: data,
            method: 'GET',
          ),
        );
      },
    );
    return ApiResponse.fromJson(
      response.data,
      serialization: serialization,
    );
  }

  Future<ApiResponse<T>> post<T>(
    String path, {
    Map<String, dynamic>? data,
    T Function(Map<String, dynamic>)? serialization,
  }) async {
    Response response = await _dio
        .post(
      path,
      data: data,
    )
        .onError(
      (error, stackTrace) {
        if (error is DioError && error.response != null) {
          return error.response!;
        }
        return Response(
          statusCode: 10001,
          requestOptions: RequestOptions(
            baseUrl: _dio.options.baseUrl,
            path: path,
            data: data,
            method: 'POST',
          ),
        );
      },
    );
    return ApiResponse.fromJson(
      response.data,
      serialization: serialization,
    );
  }

  Future<ApiResponse<T>> patch<T>(
    String path, {
    Map<String, dynamic>? data,
    T Function(Map<String, dynamic>)? serialization,
  }) async {
    Response response = await _dio
        .patch(
      path,
      data: data,
    )
        .onError(
      (error, stackTrace) {
        if (error is DioError && error.response != null) {
          return error.response!;
        }
        return Response(
          statusCode: 10001,
          requestOptions: RequestOptions(
            baseUrl: _dio.options.baseUrl,
            path: path,
            data: data,
            method: 'PATCH',
          ),
        );
      },
    );
    return ApiResponse.fromJson(
      response.data,
      serialization: serialization,
    );
  }

  Future<ApiResponse<T>> delete<T>(
    String path, {
    Map<String, dynamic>? data,
    T Function(Map<String, dynamic>)? serialization,
  }) async {
    Response response = await _dio
        .delete(
      path,
      data: data,
    )
        .onError(
      (error, stackTrace) {
        if (error is DioError && error.response != null) {
          return error.response!;
        }
        return Response(
          statusCode: 10001,
          requestOptions: RequestOptions(
            baseUrl: _dio.options.baseUrl,
            path: path,
            data: data,
            method: 'POST',
          ),
        );
      },
    );
    return ApiResponse.fromJson(
      response.data,
      serialization: serialization,
    );
  }
}
