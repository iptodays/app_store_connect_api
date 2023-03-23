/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationupdaterequest
class AppInfoLocalizationUpdateRequest {
  final AppInfoLocalizationUpdateRequestData data;

  AppInfoLocalizationUpdateRequest({required this.data});

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationupdaterequest/data
class AppInfoLocalizationUpdateRequestData {
  final String id;

  final String type;

  AppInfoLocalizationUpdateRequestDataAttributes? attributes;

  AppInfoLocalizationUpdateRequestData({
    required this.id,
    this.type = 'appInfoLocalizations',
    this.attributes,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'attributes': attributes?.toJson(),
    };
  }
}

/// https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationupdaterequest/data/attributes
class AppInfoLocalizationUpdateRequestDataAttributes {
  String? name;

  String? privacyPolicyText;

  String? privacyPolicyUrl;

  String? subtitle;

  String? privacyChoicesUrl;

  AppInfoLocalizationUpdateRequestDataAttributes({
    this.name,
    this.privacyPolicyText,
    this.privacyPolicyUrl,
    this.subtitle,
    this.privacyChoicesUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'privacyPolicyText': privacyPolicyText,
      'privacyPolicyUrl': privacyPolicyUrl,
      'subtitle': subtitle,
      'privacyChoicesUrl': privacyChoicesUrl,
    };
  }
}
