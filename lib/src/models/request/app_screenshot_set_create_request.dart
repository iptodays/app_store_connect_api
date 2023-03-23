/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-20 15:52:05
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-20 16:04:31
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_screenshot_set_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
// ignore_for_file: constant_identifier_names
/// https://developer.apple.com/documentation/appstoreconnectapi/screenshotdisplaytype
enum ScreenshotDisplayType {
  APP_IPHONE_67,
  APP_IPHONE_65,
  APP_IPHONE_61,
  APP_IPHONE_58,
  APP_IPHONE_55,
  APP_IPHONE_47,
  APP_IPHONE_40,
  APP_IPHONE_35,
  APP_IPAD_PRO_3GEN_129,
  APP_IPAD_PRO_3GEN_11,
  APP_IPAD_PRO_129,
  APP_IPAD_105,
  APP_IPAD_97,
  APP_WATCH_ULTRA,
  APP_WATCH_SERIES_7,
  APP_WATCH_SERIES_4,
  APP_WATCH_SERIES_3,
  APP_DESKTOP,
  APP_APPLE_TV,
  IMESSAGE_APP_IPHONE_67,
  IMESSAGE_APP_IPHONE_65,
  IMESSAGE_APP_IPHONE_61,
  IMESSAGE_APP_IPHONE_58,
  IMESSAGE_APP_IPHONE_55,
  IMESSAGE_APP_IPHONE_47,
  IMESSAGE_APP_IPHONE_40,
  IMESSAGE_APP_IPAD_PRO_3GEN_129,
  IMESSAGE_APP_IPAD_PRO_3GEN_11,
  IMESSAGE_APP_IPAD_PRO_129,
  IMESSAGE_APP_IPAD_105,
  IMESSAGE_APP_IPAD_97,
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest
class AppScreenshotSetCreateRequest {
  final AppScreenshotSetCreateRequestData data;

  AppScreenshotSetCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data
class AppScreenshotSetCreateRequestData {
  final AppScreenshotSetCreateRequestDataAttributes attributes;

  AppScreenshotSetCreateRequestDataRelationships? relationships;

  final String type;

  AppScreenshotSetCreateRequestData({
    required this.attributes,
    this.relationships,
    this.type = 'appScreenshotSets',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'relationships': relationships?.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/attributes
class AppScreenshotSetCreateRequestDataAttributes {
  final ScreenshotDisplayType screenshotDisplayType;

  AppScreenshotSetCreateRequestDataAttributes({
    required this.screenshotDisplayType,
  });

  Map<String, dynamic> toJson() {
    return {
      'screenshotDisplayType': screenshotDisplayType.name,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships
class AppScreenshotSetCreateRequestDataRelationships {
  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalization?
      appStoreVersionLocalization;

  AppScreenshotSetCreateRequestDataRelationshipsAppCustomProductPageLocalization?
      appCustomProductPageLocalization;

  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalization?
      appStoreVersionExperimentTreatmentLocalization;

  AppScreenshotSetCreateRequestDataRelationships({
    this.appCustomProductPageLocalization,
    this.appStoreVersionExperimentTreatmentLocalization,
    this.appStoreVersionLocalization,
  });

  Map<String, dynamic> toJson() {
    return {
      'appStoreVersionLocalization': appStoreVersionLocalization?.toJson(),
      'appCustomProductPageLocalization':
          appCustomProductPageLocalization?.toJson(),
      'appStoreVersionExperimentTreatmentLocalization':
          appStoreVersionExperimentTreatmentLocalization?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appstoreversionlocalization
class AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalization {
  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalizationData?
      data;

  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalization({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appstoreversionlocalization/data
class AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalizationData {
  final String id;

  final String type;

  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalizationData({
    required this.id,
    this.type = 'appStoreVersionLocalizations',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appcustomproductpagelocalization
class AppScreenshotSetCreateRequestDataRelationshipsAppCustomProductPageLocalization {
  AppScreenshotSetCreateRequestDataRelationshipsAppCustomProductPageLocalizationData?
      data;

  AppScreenshotSetCreateRequestDataRelationshipsAppCustomProductPageLocalization({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appcustomproductpagelocalization/data
class AppScreenshotSetCreateRequestDataRelationshipsAppCustomProductPageLocalizationData {
  final String id;

  final String type;

  AppScreenshotSetCreateRequestDataRelationshipsAppCustomProductPageLocalizationData({
    required this.id,
    this.type = 'appCustomProductPageLocalizations',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appstoreversionexperimenttreatmentlocalization
class AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalization {
  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalizationData?
      data;

  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalization({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appstoreversionexperimenttreatmentlocalization/data
class AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalizationData {
  final String id;

  final String type;

  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionExperimentTreatmentLocalizationData({
    required this.id,
    this.type = 'appStoreVersionExperimentTreatmentLocalizations',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
