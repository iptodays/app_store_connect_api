/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-19 21:43:27
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-19 21:52:18
 * @FilePath: /app_store_connect_api/lib/src/models/age_rating_declaration_response.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

/// https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclarationresponse
class AgeRatingDeclarationResponse {
  late final AgeRatingDeclaration data;

  AgeRatingDeclarationResponse.fromJson(Map<String, dynamic> json) {
    data = AgeRatingDeclaration.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclaration
class AgeRatingDeclaration {
  AgeRatingDeclarationAttributes? attributes;

  late final String id;

  late final String type;

  AgeRatingDeclaration.fromJson(Map<String, dynamic> json) {
    if (json['attributes'] != null) {
      attributes = AgeRatingDeclarationAttributes.fromJson(json['attributes']);
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

/// https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclaration/attributes
class AgeRatingDeclarationAttributes {
  String? alcoholTobaccoOrDrugUseOrReferences;

  String? kidsAgeBand;

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

  AgeRatingDeclarationAttributes.fromJson(Map<String, dynamic> json) {
    alcoholTobaccoOrDrugUseOrReferences =
        json['alcoholTobaccoOrDrugUseOrReferences'];
    kidsAgeBand = json['kidsAgeBand'];
    medicalOrTreatmentInformation = json['medicalOrTreatmentInformation'];
    profanityOrCrudeHumor = json['profanityOrCrudeHumor'];
    sexualContentOrNudity = json['sexualContentOrNudity'];
    unrestrictedWebAccess = json['unrestrictedWebAccess'];
    gamblingSimulated = json['gamblingSimulated'];
    horrorOrFearThemes = json['horrorOrFearThemes'];
    matureOrSuggestiveThemes = json['matureOrSuggestiveThemes'];
    sexualContentGraphicAndNudity = json['sexualContentGraphicAndNudity'];
    violenceCartoonOrFantasy = json['violenceCartoonOrFantasy'];
    violenceRealistic = json['violenceRealistic'];
    violenceRealisticProlongedGraphicOrSadistic =
        json['violenceRealisticProlongedGraphicOrSadistic'];
    contests = json['contests'];
    gambling = json['gambling'];
    seventeenPlus = json['seventeenPlus'];
  }

  Map<String, dynamic> toJson() {
    return {
      'alcoholTobaccoOrDrugUseOrReferences':
          alcoholTobaccoOrDrugUseOrReferences,
      'kidsAgeBand': kidsAgeBand,
      'medicalOrTreatmentInformation': medicalOrTreatmentInformation,
      'profanityOrCrudeHumor': profanityOrCrudeHumor,
      'sexualContentOrNudity': sexualContentOrNudity,
      'unrestrictedWebAccess': unrestrictedWebAccess,
      'gamblingSimulated': gamblingSimulated,
      'horrorOrFearThemes': horrorOrFearThemes,
      'matureOrSuggestiveThemes': matureOrSuggestiveThemes,
      'sexualContentGraphicAndNudity': sexualContentGraphicAndNudity,
      'violenceCartoonOrFantasy': violenceCartoonOrFantasy,
      'violenceRealistic': violenceRealistic,
      'violenceRealisticProlongedGraphicOrSadistic':
          violenceRealisticProlongedGraphicOrSadistic,
      'contests': contests,
      'gambling': gambling,
      'seventeenPlus': seventeenPlus,
    };
  }
}
