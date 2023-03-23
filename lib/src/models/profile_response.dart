/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-11 16:42:25
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-11 16:56:42
 * @FilePath: /app_store_connect_api/lib/src/models/profile_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'paging_information.dart';

class ProfileResponse {
  late final Profile data;

  ProfileResponse.fromJson(Map<String, dynamic> json) {
    data = Profile.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

class ProfilesResponse {
  late final List<Profile> data;

  PagingInformation? meta;

  ProfilesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] is List && json['data'].isNotEmpty) {
      data = json['data'].map<Profile>((v) => Profile.fromJson(v)).toList();
    } else {
      data = [];
    }
    if (json['meta'] != null) {
      meta = PagingInformation.fromJson(json['meta']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
      'meta': meta?.toJson(),
    };
  }
}

class Profile {
  ProfileAttributes? attributes;

  late final String id;

  late final String type;

  Profile.fromJson(Map<String, dynamic> json) {
    if (json['attributes'] != null) {
      attributes = ProfileAttributes.fromJson(json['attributes']);
    }
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes?.toJson(),
      'id': id,
      'type': type,
    };
  }
}

class ProfileAttributes {
  String? name;

  String? platform;

  String? profileContent;

  String? uuid;

  String? createdDate;

  String? profileState;

  String? profileType;

  String? expirationDate;

  ProfileAttributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    platform = json['platform'];
    profileContent = json['profileContent'];
    uuid = json['uuid'];
    createdDate = json['createdDate'];
    profileState = json['profileState'];
    profileType = json['profileType'];
    expirationDate = json['expirationDate'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'platform': platform,
      'profileContent': profileContent,
      'uuid': uuid,
      'createdDate': createdDate,
      'profileState': profileState,
      'profileType': profileType,
      'expirationDate': expirationDate,
    };
  }
}
