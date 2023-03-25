/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-02-28 19:49:12
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-25 16:58:34
 * @FilePath: /app_store_connect_api/lib/src/app_store_connect_api_impl.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'dart:io';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dio/dio.dart';
import 'api/api.dart';
import 'models/age_rating_declaration_response.dart';
import 'models/app_categories_response.dart';
import 'models/app_preview_sets_response.dart';
import 'models/app_screenshot_response.dart';
import 'models/app_screenshot_set_response.dart';
import 'models/app_screenshot_sets_response.dart';
import 'models/app_store_review_detail_response.dart';
import 'models/app_store_version_localizations_response.dart';
import 'models/bundleId_capability_response.dart';
import 'models/certificate_response.dart';
import 'models/request/age_rating_declaration_update_request.dart';
import 'models/request/app_info_localization_create_request.dart';
import 'models/request/app_info_localization_update_request.dart';
import 'models/app_info_localizations_response.dart';
import 'models/app_info_response.dart';
import 'models/app_response.dart';
import 'models/app_store_versions_response.dart';
import 'models/request/app_info_update_request.dart';
import 'models/request/app_screenshot_create_request.dart';
import 'models/request/app_screenshot_set_create_request.dart';
import 'models/request/app_screenshot_update_request.dart';
import 'models/request/app_store_review_detail_create_request.dart';
import 'models/request/app_store_review_detail_update_request.dart';
import 'models/request/app_store_version_create_request.dart';
import 'models/request/app_store_version_localization_create_request.dart';
import 'models/request/app_store_version_localization_update_request.dart';
import 'models/request/app_store_version_update_request.dart';
import 'models/request/app_update_request.dart';
import 'models/builds_response.dart';
import 'models/bundle_id_response.dart';
import 'models/profile_response.dart';
import 'models/request/bundleId_capability_create_request.dart';
import 'models/request/bundleId_create_request.dart';
import 'models/request/certificate_create_request.dart';
import 'models/request/profile_create_request.dart';

class AppStoreConnectApi {
  late final Api _api;

  String get signedToken => _signedToken;
  late final String _signedToken;

  /// https://developer.apple.com/documentation/appstoreconnectapi/generating_tokens_for_api_requests#3878467
  AppStoreConnectApi(
    String issuerId,
    String keyId,
    String key, {
    int? iat,
    int? exp,
    List<String>? scope,
  }) {
    Map<String, dynamic> payload = {
      'iss': issuerId,
      'iat': iat ?? DateTime.now().millisecondsSinceEpoch / 1000,
      'exp': exp ??
          DateTime.now()
                  .add(const Duration(minutes: 20))
                  .millisecondsSinceEpoch /
              1000,
      'aud': 'appstoreconnect-v1',
      'scope': scope,
    };
    Map<String, dynamic> header = {
      'alg': 'ES256',
      'kid': keyId,
      'typ': 'JWt',
    };
    JWT jwt = JWT(
      payload,
      header: header,
    );
    _signedToken = jwt.sign(
      ECPrivateKey(key),
      algorithm: JWTAlgorithm.ES256,
    );
    // print(_signedToken);
    _api = Api(signedToken: _signedToken);
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_apps
  Future<ApiResponse<AppsResponse>> getApps() async {
    return _api.get(
      '/apps',
      serialization: (p0) => AppsResponse.fromJson(p0),
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_app_information
  Future<ApiResponse<AppResponse>> getApp(String id) async {
    return _api.get(
      '/apps/$id',
      serialization: AppResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/modify_an_app
  Future<ApiResponse<AppResponse>> updateApp(
    String id, {
    required AppUpdateRequest request,
  }) async {
    return _api.patch(
      '/apps/$id',
      data: request.toJson(),
      serialization: AppResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_all_builds_of_an_app
  Future<ApiResponse<BuildsResponse>> getAppBuilds(String id) async {
    return _api.get(
      '/apps/$id/builds',
      serialization: BuildsResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_app_info_information
  Future<ApiResponse<AppInfosResponse>> getAppInfos(String id) async {
    return _api.get<AppInfosResponse>(
      '/apps/$id/appInfos',
      serialization: AppInfosResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_app_info_information
  Future<ApiResponse<AppInfoResponse>> getAppInfo(String id) async {
    return _api.get<AppInfoResponse>(
      '/appInfos/$id',
      serialization: AppInfoResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/modify_an_app_info
  Future<ApiResponse<AppInfoResponse>> updateAppInfo(
    String id, {
    required AppInfoUpdateRequest request,
  }) async {
    return _api.patch(
      '/appInfos/$id',
      data: request.toJson(),
      serialization: AppInfoResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_all_app_info_localizations_for_an_app_info
  Future<ApiResponse<AppInfoLocalizationsResponse>> getAppInfoLocalizations(
      String id) async {
    return _api.get(
      '/appInfos/$id/appInfoLocalizations',
      serialization: AppInfoLocalizationsResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_app_info_localization_information
  Future<ApiResponse<AppInfoLocalizationResponse>> getAppInfoLocalization(
      String id) async {
    return _api.get(
      '/appInfoLocalizations/$id',
      serialization: AppInfoLocalizationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_an_app_info_localization
  Future<ApiResponse<AppInfoLocalizationResponse>> createAppInfoLocalizations(
    String id, {
    required AppInfoLocalizationCreateRequest request,
  }) async {
    return _api.post(
      '/appInfoLocalizations',
      data: request.toJson(),
      serialization: AppInfoLocalizationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/modify_an_app_info_localization
  Future<ApiResponse<AppInfoLocalizationResponse>> updateAppInfoLocalization(
    String id, {
    required AppInfoLocalizationUpdateRequest request,
  }) async {
    return _api.patch(
      '/appInfoLocalizations/$id',
      data: request.toJson(),
      serialization: AppInfoLocalizationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/delete_an_app_info_localization
  Future<ApiResponse> deleteAppInfoLocalizations(String id) async {
    return _api.delete('/appInfoLocalizations/$id');
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_all_app_store_versions_for_an_app
  Future<ApiResponse<AppStoreVersionsResponse>> getAppStoreVersions(
      String id) async {
    return _api.get<AppStoreVersionsResponse>(
      '/apps/$id/appStoreVersions',
      serialization: AppStoreVersionsResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_app_store_version_information
  Future<ApiResponse<AppStoreVersionResponse>> getAppStoreVersion(
      String id) async {
    return _api.get<AppStoreVersionResponse>(
      '/appStoreVersions/$id',
      serialization: AppStoreVersionResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_an_app_store_version
  Future<ApiResponse<AppStoreVersionResponse>> createAppStoreVersion(
      {required AppStoreVersionCreateRequest request}) async {
    return _api.post<AppStoreVersionResponse>(
      '/appStoreVersions',
      data: request.toJson(),
      serialization: AppStoreVersionResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/modify_an_app_store_version
  Future<ApiResponse<AppStoreVersionResponse>> updateAppStoreVersion(
    String id, {
    required AppStoreVersionUpdateRequest request,
  }) async {
    return _api.patch<AppStoreVersionResponse>(
      '/appStoreVersions/$id',
      data: request.toJson(),
      serialization: AppStoreVersionResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/delete_an_app_store_version
  Future<ApiResponse> deleteAppStoreVersion(String id) async {
    return _api.delete('/appStoreVersions/$id');
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_an_app_store_review_detail
  Future<ApiResponse<AppStoreReviewDetailResponse>> createAppStoreReviewDetail({
    required AppStoreReviewDetailCreateRequest request,
  }) async {
    return _api.post<AppStoreReviewDetailResponse>(
      '/appStoreReviewDetails',
      data: request.toJson(),
      serialization: AppStoreReviewDetailResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_the_app_store_review_details_resource_information_of_an_app_store_version
  Future<ApiResponse<AppStoreReviewDetailResponse>> getAppStoreReviewDetail(
      String id) async {
    return _api.get<AppStoreReviewDetailResponse>(
      '/appStoreVersions/$id/appStoreReviewDetail',
      serialization: AppStoreReviewDetailResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/modify_an_app_store_review_detail
  Future<ApiResponse<AppStoreReviewDetailResponse>> updateAppStoreReviewDetail(
    String id, {
    required AppStoreReviewDetailUpdateRequest request,
  }) async {
    return _api.patch<AppStoreReviewDetailResponse>(
      '/appStoreReviewDetails/$id',
      data: request.toJson(),
      serialization: AppStoreReviewDetailResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_all_app_store_version_localizations_for_an_app_store_version
  Future<ApiResponse<AppStoreVersionLocalizationsResponse>>
      getAppStoreVersionLocalizations(String id) async {
    return _api.get<AppStoreVersionLocalizationsResponse>(
      '/appStoreVersions/$id/appStoreVersionLocalizations',
      serialization: AppStoreVersionLocalizationsResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_app_store_version_localization_information
  Future<ApiResponse<AppStoreVersionLocalizationResponse>>
      getAppStoreVersionLocalization(String id) async {
    return _api.get<AppStoreVersionLocalizationResponse>(
      '/appStoreVersionLocalizations/$id',
      serialization: AppStoreVersionLocalizationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_an_app_store_version_localization
  Future<ApiResponse<AppStoreVersionLocalizationResponse>>
      createAppStoreVersionLocalization({
    required AppStoreVersionLocalizationCreateRequest request,
  }) async {
    return _api.post<AppStoreVersionLocalizationResponse>(
      '/appStoreVersionLocalizations',
      data: request.toJson(),
      serialization: AppStoreVersionLocalizationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/modify_an_app_store_version_localization
  Future<ApiResponse<AppStoreVersionLocalizationResponse>>
      updateAppStoreVersionLocalization(
    String id, {
    required AppStoreVersionLocalizationUpdateRequest request,
  }) async {
    return _api.patch<AppStoreVersionLocalizationResponse>(
      '/appStoreVersionLocalizations/$id',
      data: request.toJson(),
      serialization: AppStoreVersionLocalizationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/delete_an_app_store_version_localization
  Future<ApiResponse> deleteAppStoreVersionLocalization(String id) async {
    return _api.delete('/appStoreVersionLocalizations/$id');
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_all_app_screenshot_sets_for_an_app_store_version_localization
  Future<ApiResponse<AppScreenshotSetsResponse>>
      getAppStoreVersionLocalizationScreenshotSets(String id) async {
    return _api.get<AppScreenshotSetsResponse>(
      '/appStoreVersionLocalizations/$id/appScreenshotSets',
      serialization: AppScreenshotSetsResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_all_app_preview_sets_for_an_app_store_version_localization
  Future<ApiResponse<AppPreviewSetsResponse>> getAppPreviewSets(
      String id) async {
    return _api.get<AppPreviewSetsResponse>(
      '/appStoreVersionLocalizations/$id/appPreviewSets',
      serialization: AppPreviewSetsResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_and_download_certificates
  Future<ApiResponse<CertificatesResponse>> getCertificates() async {
    return _api.get(
      '/certificates',
      serialization: CertificatesResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_a_certificate
  Future<ApiResponse<CertificateResponse>> createCertificate({
    required CertificateCreateRequest request,
  }) async {
    return _api.post<CertificateResponse>(
      '/certificates',
      data: request.toJson(),
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/revoke_a_certificate
  Future<ApiResponse> revokeCertificate(String cerId) async {
    return _api.delete('/certificates/$cerId');
  }

  /// 获取已注册的 Bundle ID
  Future<ApiResponse<BundleIdsResponse>> getBundleIds() async {
    return _api.get<BundleIdsResponse>(
      '/bundleIds',
      serialization: BundleIdsResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/register_a_new_bundle_id
  Future<ApiResponse<BundleIdResponse>> createBundleId({
    required BundleIdCreateRequest request,
  }) async {
    return _api.post<BundleIdResponse>(
      '/bundleIds',
      data: request.toJson(),
      serialization: BundleIdResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/enable_a_capability
  Future<ApiResponse<BundleIdCapabilityResponse>> enableBundleIdCapabilities({
    required BundleIdCapabilityCreateRequest request,
  }) async {
    return _api.post<BundleIdCapabilityResponse>(
      '/bundleIdCapabilities',
      data: request.toJson(),
      serialization: BundleIdCapabilityResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_and_download_profiles
  Future<ApiResponse<ProfilesResponse>> getProfiles() async {
    return _api.get<ProfilesResponse>(
      '/profiles',
      serialization: ProfilesResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_a_profile
  Future<ApiResponse<ProfileResponse>> createProfile({
    required ProfileCreateRequest request,
  }) async {
    return _api.post<ProfileResponse>(
      '/profiles',
      data: request.toJson(),
      serialization: ProfileResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/get_v1_appinfos_id_ageratingdeclaration
  Future<ApiResponse<AgeRatingDeclarationResponse>> getAgeRatingDeclaration(
    String id,
  ) async {
    return _api.get<AgeRatingDeclarationResponse>(
      '/appInfos/$id/ageRatingDeclaration',
      serialization: AgeRatingDeclarationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/modify_an_age_rating_declaration
  Future<ApiResponse<AgeRatingDeclarationResponse>> updateAgeRatingDeclaration(
    String id, {
    required AgeRatingDeclarationUpdateRequest request,
  }) async {
    return _api.patch<AgeRatingDeclarationResponse>(
      '/ageRatingDeclarations/$id',
      data: request.toJson(),
      serialization: AgeRatingDeclarationResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_app_categories
  Future<ApiResponse<AppCategoriesResponse>> getAppCategories({
    bool? existsParent,
    List<String>? fieldsAppCategories,
    List<String>? filterPlatforms,
    List<String>? include,
    int? limit,
    int? limitSubcategories,
  }) async {
    return _api.get<AppCategoriesResponse>(
      '/appCategories',
      queryParameters: {
        'exists[parent]': existsParent,
        'fields[appCategories]': fieldsAppCategories,
        'filter[platforms]': filterPlatforms,
        'include': include,
        'limit': limit,
        'limit[subcategories]': limitSubcategories,
      },
      serialization: AppCategoriesResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/list_all_subcategories_for_an_app_category
  Future<ApiResponse<AppCategoriesResponse>> getSubcategories(
    String id, {
    List<String>? fieldsAppCategories,
    int? limit,
  }) async {
    return _api.get<AppCategoriesResponse>(
      '/appCategories/$id/subcategories',
      queryParameters: {
        'fields[appCategories]': fieldsAppCategories,
        'limit': limit,
      },
      serialization: AppCategoriesResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_an_app_screenshot_set
  Future<ApiResponse<AppScreenshotSetResponse>> creatAppScreenshotSet({
    required AppScreenshotSetCreateRequest request,
  }) async {
    return _api.post<AppScreenshotSetResponse>(
      '/appScreenshotSets',
      data: request.toJson(),
      serialization: AppScreenshotSetResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/create_an_app_screenshot
  Future<ApiResponse<AppScreenshotResponse>> createAppScreenshot({
    required AppScreenshotCreateRequest request,
  }) async {
    return _api.post(
      '/appScreenshots',
      data: request.toJson(),
      serialization: AppScreenshotResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/read_app_screenshot_information
  Future<ApiResponse<AppScreenshotResponse>> getAppScreenshot(
    String screenshotId,
  ) async {
    return _api.get(
      '/appScreenshots/$screenshotId',
      serialization: AppScreenshotResponse.fromJson,
    );
  }

  /// https://developer.apple.com/documentation/appstoreconnectapi/uploading_assets_to_app_store_connect#3591275
  Future<ApiResponse> uploadAppScreenshot(
    String screenshotId, {
    required List<UploadOperation> operations,
    required File file,
  }) async {
    // https://github.com/bennord/appstore-tools/blob/0b71f88a5d/appstore_tools/actions/publish.py
    var fileStream = file.openRead();
    var fileHash = md5.convert(file.readAsBytesSync());
    await Future.wait<Response>(operations.map((e) async {
      Map<String, dynamic> headers = {
        'Content-Length': e.length,
      };
      for (var element in e.requestHeaders!) {
        headers[element.name!] = element.value;
      }
      fileStream = file.openRead(e.offset, e.length);
      var fileChunk = await fileStream.fold<List<int>>(
        [],
        (previous, element) => previous..addAll(element),
      );
      fileHash = md5.convert([...fileHash.bytes, ...fileChunk]);
      try {
        Response response = await Dio().request(
          e.url!,
          data: Stream.fromIterable([fileChunk]),
          options: Options(
            headers: headers,
            method: e.method,
          ),
          onSendProgress: (p0, p1) {
            // print('onSendProgress: ${p0 / p1}');
          },
        );
        return response;
      } on DioError catch (error) {
        return error.response ?? Response(requestOptions: RequestOptions());
      } catch (error) {
        return Response(requestOptions: RequestOptions());
      }
    }).toList());

    /// https://developer.apple.com/documentation/appstoreconnectapi/uploading_assets_to_app_store_connect#3591283
    return _api.patch(
      '/appScreenshots/$screenshotId',
      data: AppScreenshotUpdateRequest(
        data: AppScreenshotUpdateRequestData(
          attributes: AppScreenshotUpdateRequestDataAttributes(
            sourceFileChecksum: hex.encode(fileHash.bytes),
          ),
          id: screenshotId,
        ),
      ).toJson(),
    );
  }
}
