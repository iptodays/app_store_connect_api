/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-18 15:06:41
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-25 20:51:27
 * @FilePath: /app_store_connect_api/lib/src/models/request/profile_create_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest
class ProfileCreateRequest {
  final ProfileCreateRequestData data;

  ProfileCreateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data
class ProfileCreateRequestData {
  final ProfileCreateRequestDataAttributes attributes;

  final ProfileCreateRequestDataRelationships relationships;

  final String type;

  ProfileCreateRequestData({
    required this.attributes,
    required this.relationships,
    this.type = 'profiles',
  });

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/attributes
class ProfileCreateRequestDataAttributes {
  final String name;

  /// IOS_APP_DEVELOPMENT, IOS_APP_STORE, IOS_APP_ADHOC, IOS_APP_INHOUSE, MAC_APP_DEVELOPMENT, MAC_APP_STORE, MAC_APP_DIRECT, TVOS_APP_DEVELOPMENT, TVOS_APP_STORE, TVOS_APP_ADHOC, TVOS_APP_INHOUSE, MAC_CATALYST_APP_DEVELOPMENT, MAC_CATALYST_APP_STORE, MAC_CATALYST_APP_DIRECT
  final String profileType;

  ProfileCreateRequestDataAttributes({
    required this.name,
    this.profileType = 'IOS_APP_STORE',
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'profileType': profileType,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/relationships
class ProfileCreateRequestDataRelationships {
  final ProfileCreateRequestDataRelationshipsBundleId bundleId;

  final ProfileCreateRequestDataRelationshipsCertificates certificates;

  ProfileCreateRequestDataRelationshipsDevices? devices;

  ProfileCreateRequestDataRelationships({
    required this.bundleId,
    required this.certificates,
    this.devices,
  });

  Map<String, dynamic> toJson() {
    return {
      'bundleId': bundleId.toJson(),
      'certificates': certificates.toJson(),
      'devices': devices?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/relationships/bundleid
class ProfileCreateRequestDataRelationshipsBundleId {
  final ProfileCreateRequestDataRelationshipsBundleIdData data;

  ProfileCreateRequestDataRelationshipsBundleId({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/relationships/bundleid/data
class ProfileCreateRequestDataRelationshipsBundleIdData {
  final String? id;

  final String type;

  ProfileCreateRequestDataRelationshipsBundleIdData({
    required this.id,
    this.type = 'bundleIds',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/relationships/certificates
class ProfileCreateRequestDataRelationshipsCertificates {
  final List<ProfileCreateRequestDataRelationshipsCertificatesData> data;

  ProfileCreateRequestDataRelationshipsCertificates({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/relationships/certificates/data
class ProfileCreateRequestDataRelationshipsCertificatesData {
  final String id;

  final String type;

  ProfileCreateRequestDataRelationshipsCertificatesData({
    required this.id,
    this.type = 'certificates',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/relationships/devices
class ProfileCreateRequestDataRelationshipsDevices {
  final List<ProfileCreateRequestDataRelationshipsDevicesData> data;

  ProfileCreateRequestDataRelationshipsDevices({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/profilecreaterequest/data/relationships/devices/data
class ProfileCreateRequestDataRelationshipsDevicesData {
  final String? id;

  final String type;

  ProfileCreateRequestDataRelationshipsDevicesData({
    required this.id,
    this.type = 'devices',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
