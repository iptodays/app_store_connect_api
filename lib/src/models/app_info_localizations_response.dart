/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 21:19:04
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-11 21:41:32
 * @FilePath: /app_store_connect_api/lib/src/models/app_info_localizations_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'paging_information.dart';

class AppInfoLocalizationResponse {
  late final AppInfoLocalization data;

  AppInfoLocalizationResponse.fromJson(Map<String, dynamic> json) {
    data = AppInfoLocalization.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

class AppInfoLocalizationsResponse {
  late final List<AppInfoLocalization> data;

  PagingInformation? meta;

  AppInfoLocalizationsResponse.fromJson(Map<String, dynamic> json) {
    if (json['meta'] != null) {
      meta = PagingInformation.fromJson(json['meta']);
    }
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data']
          .map<AppInfoLocalization>((v) => AppInfoLocalization.fromJson(v))
          .toList();
    } else {
      data = [];
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta?.toJson(),
      'data': data.map((e) => e.toJson()).toList(),
    };
  }
}

class AppInfoLocalization {
  late final String id;

  late final String type;

  AppInfoLocalizationAttributes? attributes;

  AppInfoLocalization.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    if (json['attributes'] != null) {
      attributes = AppInfoLocalizationAttributes.fromJson(json['attributes']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes?.toJson(),
    };
  }
}

class AppInfoLocalizationAttributes {
  String? locale;

  String? name;

  String? privacyPolicyText;

  String? privacyPolicyUrl;

  String? subtitle;

  String? privacyChoicesUrl;

  AppInfoLocalizationAttributes.fromJson(Map<String, dynamic> json) {
    locale = json['locale'];
    name = json['name'];
    privacyPolicyText = json['privacyPolicyText'];
    privacyPolicyUrl = json['privacyPolicyUrl'];
    subtitle = json['subtitle'];
    privacyChoicesUrl = json['privacyChoicesUrl'];
  }

  Map<String, dynamic> toJson() {
    return {
      'locale': locale,
      'name': name,
      'privacyPolicyText': privacyPolicyText,
      'privacyPolicyUrl': privacyPolicyUrl,
      'subtitle': subtitle,
      'privacyChoicesUrl': privacyChoicesUrl,
    };
  }
}
