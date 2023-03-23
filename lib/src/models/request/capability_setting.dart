/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-18 16:14:59
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-18 16:42:56
 * @FilePath: /app_store_connect_api/lib/src/models/request/capability_setting.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
/// https://developer.apple.com/documentation/appstoreconnectapi/capabilitytype
class CapabilitySetting {
  /// ENTRY, SINGLE, MULTIPLE
  String? allowedInstances;

  String? description;

  bool? enabledByDefault;

  /// ICLOUD_VERSION, DATA_PROTECTION_PERMISSION_LEVEL, APPLE_ID_AUTH_APP_CONSENT
  String? key;

  String? name;

  List<CapabilityOption>? options;

  bool? visible;

  int? minInstances;

  CapabilitySetting({
    this.allowedInstances,
    this.description,
    this.enabledByDefault,
    this.key,
    this.name,
    this.options,
    this.visible,
    this.minInstances,
  });

  CapabilitySetting.fromJson(Map<String, dynamic> json) {
    allowedInstances = json['allowedInstances'];
    description = json['description'];
    enabledByDefault = json['enabledByDefault'];
    key = json['key'];
    name = json['name'];
    if (json['options'] != null) {
      options = json['options']
          .map<CapabilityOption>(
            (v) => CapabilityOption.fromJson(v),
          )
          .toList();
    }
    visible = json['visible'];
    minInstances = json['minInstances'];
  }

  Map<String, dynamic> toJson() {
    return {
      'allowedInstances': allowedInstances,
      'description': description,
      'enabledByDefault': enabledByDefault,
      'key': key,
      'name': name,
      'options': options?.map((e) => e.toJson()).toList(),
      'visible': visible,
      'minInstances': minInstances,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/capabilityoption
class CapabilityOption {
  String? description;

  bool? enabled;

  bool? enabledByDefault;

  /// XCODE_5, XCODE_6, COMPLETE_PROTECTION, PROTECTED_UNLESS_OPEN, PROTECTED_UNTIL_FIRST_USER_AUTH, PRIMARY_APP_CONSENT
  String? key;

  String? name;

  bool? supportsWildcard;

  CapabilityOption({
    this.description,
    this.enabled,
    this.enabledByDefault,
    this.key,
    this.name,
    this.supportsWildcard,
  });

  CapabilityOption.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    enabled = json['enabled'];
    enabledByDefault = json['enabledByDefault'];
    key = json['key'];
    name = json['name'];
    supportsWildcard = json['supportsWildcard'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'enabled': enabled,
      'enabledByDefault': enabledByDefault,
      'key': key,
      'name': name,
      'supportsWildcard': supportsWildcard,
    };
  }
}
