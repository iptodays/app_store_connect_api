/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-19 21:26:20
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-19 21:40:07
 * @FilePath: /app_store_connect_api/lib/src/models/request/age_rating_declaration_update_request.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclarationupdaterequest
class AgeRatingDeclarationUpdateRequest {
  final AgeRatingDeclarationUpdateRequestData data;

  AgeRatingDeclarationUpdateRequest({
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclarationupdaterequest/data
class AgeRatingDeclarationUpdateRequestData {
  final AgeRatingDeclarationUpdateRequestDataAttributes attributes;

  final String id;

  final String type;

  AgeRatingDeclarationUpdateRequestData({
    required this.attributes,
    required this.id,
    this.type = 'ageRatingDeclarations',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclarationupdaterequest/data/attributes
class AgeRatingDeclarationUpdateRequestDataAttributes {
  /// https://developer.apple.com/documentation/appstoreconnectapi/kidsageband
  /// FIVE_AND_UNDER, SIX_TO_EIGHT, NINE_TO_ELEVEN
  String? kidsAgeBand;

  /// NONE, INFREQUENT_OR_MILD, FREQUENT_OR_INTENSE
  String? alcoholTobaccoOrDrugUseOrReferences;

  String? medicalOrTreatmentInformation;

  String? profanityOrCrudeHumor;

  String? sexualContentOrNudity;

  String? gamblingSimulated;

  String? horrorOrFearThemes;

  String? matureOrSuggestiveThemes;

  String? sexualContentGraphicAndNudity;

  String? violenceCartoonOrFantasy;

  String? violenceRealistic;

  String? violenceRealisticProlongedGraphicOrSadistic;

  String? contests;

  bool? gambling;

  bool? seventeenPlus;

  bool? unrestrictedWebAccess;

  AgeRatingDeclarationUpdateRequestDataAttributes({
    this.alcoholTobaccoOrDrugUseOrReferences = 'NONE',
    this.contests = 'NONE',
    this.gambling = false,
    this.gamblingSimulated = 'NONE',
    this.horrorOrFearThemes = 'NONE',
    this.matureOrSuggestiveThemes = 'NONE',
    this.medicalOrTreatmentInformation = 'NONE',
    this.profanityOrCrudeHumor = 'NONE',
    this.seventeenPlus = false,
    this.sexualContentGraphicAndNudity = 'NONE',
    this.sexualContentOrNudity = 'NONE',
    this.unrestrictedWebAccess = false,
    this.violenceCartoonOrFantasy = 'NONE',
    this.violenceRealistic = 'NONE',
    this.violenceRealisticProlongedGraphicOrSadistic = 'NONE',
  });

  Map<String, dynamic> toJson() {
    return {
      'alcoholTobaccoOrDrugUseOrReferences':
          alcoholTobaccoOrDrugUseOrReferences,
      'contests': contests,
      'gambling': gambling,
      'gamblingSimulated': gamblingSimulated,
      'horrorOrFearThemes': horrorOrFearThemes,
      'matureOrSuggestiveThemes': matureOrSuggestiveThemes,
      'medicalOrTreatmentInformation': medicalOrTreatmentInformation,
      'profanityOrCrudeHumor': profanityOrCrudeHumor,
      'seventeenPlus': seventeenPlus,
      'sexualContentGraphicAndNudity': sexualContentGraphicAndNudity,
      'sexualContentOrNudity': sexualContentOrNudity,
      'unrestrictedWebAccess': unrestrictedWebAccess,
      'violenceCartoonOrFantasy': violenceCartoonOrFantasy,
      'violenceRealistic': violenceRealistic,
      'violenceRealisticProlongedGraphicOrSadistic':
          violenceRealisticProlongedGraphicOrSadistic,
    };
  }
}
