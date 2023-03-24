/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-12 17:03:53
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-24 18:32:30
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_store_version_localization_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

enum AppleLocale {
  arSA,
  ca,
  zhHans,
  zhHant,
  hr,
  cs,
  da,
  nlNL,
  enAU,
  enCA,
  enGB,
  enUS,
  fi,
  frFR,
  frCA,
  deDE,
  el,
  he,
  hi,
  hu,
  id,
  it,
  ja,
  ko,
  ms,
  no,
  pl,
  ptBR,
  ptPT,
  ro,
  ru,
  sk,
  esMX,
  esES,
  sv,
  th,
  tr,
  uk,
  vi,
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest
class AppStoreVersionLocalizationCreateRequest {
  final AppStoreVersionLocalizationCreateRequestData data;

  AppStoreVersionLocalizationCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest
class AppStoreVersionLocalizationCreateRequestData {
  final AppStoreVersionLocalizationCreateRequestDataAttributes attributes;

  final AppStoreVersionLocalizationCreateRequestDataRelationships relationships;

  final String type;

  AppStoreVersionLocalizationCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'appStoreVersionLocalizations',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data/attributes
class AppStoreVersionLocalizationCreateRequestDataAttributes {
  String? description;

  String? keywords;

  final AppleLocale locale;

  String? marketingUrl;

  String? promotionalText;

  String? supportUrl;

  String? whatsNew;

  AppStoreVersionLocalizationCreateRequestDataAttributes({
    required this.locale,
    this.description,
    this.keywords,
    this.marketingUrl,
    this.promotionalText,
    this.supportUrl,
    this.whatsNew,
  });

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'keywords': keywords,
      'locale': enum2Str(locale),
      'marketingUrl': marketingUrl,
      'promotionalText': promotionalText,
      'supportUrl': supportUrl,
      'whatsNew': whatsNew,
    };
  }

  String enum2Str(AppleLocale locale) {
    String a = locale.name;
    final reg = RegExp(r'[A-Z]');
    RegExpMatch? match = reg.firstMatch(a);
    if (match != null) {
      String b = match[0]!;
      a = a.replaceFirst(b, '-$b');
    }
    return a;
  }

  AppleLocale? str2Enum(String val) {
    if (val.contains('-')) {
      val = val.replaceAll('-', '');
    }
    List<String> locales = AppleLocale.values.map((e) => e.name).toList();
    if (locales.contains(val)) {
      return AppleLocale.values[locales.indexOf(val)];
    }
    return null;
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data
class AppStoreVersionLocalizationCreateRequestDataRelationships {
  final AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersion
      appStoreVersion;

  AppStoreVersionLocalizationCreateRequestDataRelationships({
    required this.appStoreVersion,
  });

  Map<String, dynamic> toJson() {
    return {
      'appStoreVersion': appStoreVersion.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data/relationships/appstoreversion
class AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersion {
  final AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersionData
      data;

  AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersion({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationcreaterequest/data/relationships/appstoreversion/data
class AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersionData {
  final String id;

  final String type;

  AppStoreVersionLocalizationCreateRequestDataRelationshipsAppStoreVersionData({
    required this.id,
    this.type = 'appStoreVersions',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
