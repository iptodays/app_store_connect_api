/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-20 14:55:54
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-20 15:11:36
 * @FilePath: /app_store_connect_api/lib/src/models/request/app_info_update_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
class AppInfoUpdateRequest {
  final AppInfoUpdateRequestData data;

  AppInfoUpdateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data
class AppInfoUpdateRequestData {
  final String id;

  final String type;

  AppInfoUpdateRequestDataRelationships? relationships;

  AppInfoUpdateRequestData({
    required this.id,
    this.type = 'appInfos',
    this.relationships,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'relationships': relationships?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships
class AppInfoUpdateRequestDataRelationships {
  AppInfoUpdateRequestDataRelationshipsPrimaryCategory? primaryCategory;

  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryOne?
      primarySubcategoryOne;

  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryTwo?
      primarySubcategoryTwo;

  AppInfoUpdateRequestDataRelationshipsSecondaryCategory? secondaryCategory;

  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryOne?
      secondarySubcategoryOne;

  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryTwo?
      secondarySubcategoryTwo;

  AppInfoUpdateRequestDataRelationships({
    this.primaryCategory,
    this.primarySubcategoryOne,
    this.primarySubcategoryTwo,
    this.secondaryCategory,
    this.secondarySubcategoryOne,
    this.secondarySubcategoryTwo,
  });

  Map<String, dynamic> toJson() {
    return {
      'primaryCategory': primaryCategory?.toJson(),
      'primarySubcategoryOne': primarySubcategoryOne?.toJson(),
      'primarySubcategoryTwo': primarySubcategoryTwo?.toJson(),
      'secondaryCategory': secondaryCategory?.toJson(),
      'secondarySubcategoryOne': secondarySubcategoryOne?.toJson(),
      'secondarySubcategoryTwo': secondarySubcategoryTwo?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarycategory
class AppInfoUpdateRequestDataRelationshipsPrimaryCategory {
  AppInfoUpdateRequestDataRelationshipsPrimaryCategoryData? data;

  AppInfoUpdateRequestDataRelationshipsPrimaryCategory({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarycategory/data
class AppInfoUpdateRequestDataRelationshipsPrimaryCategoryData {
  final String id;

  final String type;

  AppInfoUpdateRequestDataRelationshipsPrimaryCategoryData({
    required this.id,
    this.type = 'appCategories',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategoryone
class AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryOne {
  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryOneData? data;

  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryOne({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategoryone/data
class AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryOneData {
  final String id;

  final String type;

  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryOneData({
    required this.id,
    this.type = 'appCategories',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategorytwo
class AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryTwo {
  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryTwoData? data;

  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryTwo({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategorytwo/data
class AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryTwoData {
  final String id;

  final String type;

  AppInfoUpdateRequestDataRelationshipsPrimarySubcategoryTwoData({
    required this.id,
    this.type = 'appCategories',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarycategory
class AppInfoUpdateRequestDataRelationshipsSecondaryCategory {
  AppInfoUpdateRequestDataRelationshipsSecondaryCategoryData? data;

  AppInfoUpdateRequestDataRelationshipsSecondaryCategory({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarycategory/data
class AppInfoUpdateRequestDataRelationshipsSecondaryCategoryData {
  final String id;

  final String type;

  AppInfoUpdateRequestDataRelationshipsSecondaryCategoryData({
    required this.id,
    this.type = 'appCategories',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarysubcategoryone
class AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryOne {
  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryOneData? data;

  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryOne({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarycategory/data
class AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryOneData {
  final String id;

  final String type;

  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryOneData({
    required this.id,
    this.type = 'appCategories',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarysubcategorytwo
class AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryTwo {
  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryTwoData? data;

  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryTwo({
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarysubcategorytwo/data
class AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryTwoData {
  final String id;

  final String type;

  AppInfoUpdateRequestDataRelationshipsSecondarySubcategoryTwoData({
    required this.id,
    this.type = 'appCategories',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
    };
  }
}
