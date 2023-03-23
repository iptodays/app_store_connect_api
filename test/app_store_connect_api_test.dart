// ignore_for_file: avoid_print

/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-02-28 19:45:36
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-23 23:44:56
 * @FilePath: /app_store_connect_api/test/app_store_connect_api_test.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'dart:io';
import 'package:app_store_connect_api/app_store_connect_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  final app = AppStoreConnectApi(
    'issuerId',
    'keyId',
    'key',
  );

  test(
    '注册新的Certificate',
    () async {
      var response = await app.createCertificate(
        request: CertificateCreateRequest(
          data: CertificateCreateRequestData(
            attributes: CertificateCreateRequestDataAttributes(
              csrContent: 'CertificateSigningRequest',
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '注册新的BundleId',
    () async {
      var response = await app.createBundleId(
        request: BundleIdCreateRequest(
          data: BundleIdCreateRequestData(
            attributes: BundleIdCreateRequestDataAttributes(
              identifier: 'com.appstoreconnectapi.app',
              name: 'appstoreconnectapi',
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '开启iCloud',
    () async {
      var response = await app.enableBundleIdCapabilities(
        request: BundleIdCapabilityCreateRequest(
          data: BundleIdCapabilityCreateRequestData(
            attributes: BundleIdCapabilityCreateRequestDataAttributes(
              capabilityType: 'ICLOUD',
              settings: [
                CapabilitySetting(
                  key: 'ICLOUD_VERSION',
                ),
              ],
            ),
            relationships: BundleIdCapabilityCreateRequestDataRelationships(
              bundleId:
                  BundleIdCapabilityCreateRequestDataRelationshipsBundleId(
                data:
                    BundleIdCapabilityCreateRequestDataRelationshipsBundleIdData(
                  id: 'RHMLVM3295',
                ),
              ),
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '创建Profile',
    () async {
      // build id: RHMLVM3295
      // cer id: 74R8GH76U6
      // profile id: C8JNX3PCPG
      var response = await app.createProfile(
        request: ProfileCreateRequest(
          data: ProfileCreateRequestData(
            attributes: ProfileCreateRequestDataAttributes(
              name: 'appstoreconnectapi',
            ),
            relationships: ProfileCreateRequestDataRelationships(
              bundleId: ProfileCreateRequestDataRelationshipsBundleId(
                data: ProfileCreateRequestDataRelationshipsBundleIdData(
                  id: 'RHMLVM3295',
                ),
              ),
              certificates: ProfileCreateRequestDataRelationshipsCertificates(
                data: [
                  ProfileCreateRequestDataRelationshipsCertificatesData(
                    id: '74R8GH76U6',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取Apps',
    () async {
      var response = await app.getApps();
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  String appId = '6446447495';
  test(
    '获取App版本信息',
    () async {
      var response = await app.getAppStoreVersions(appId);
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '更新App内容版权',
    () async {
      AppUpdateRequest request = AppUpdateRequest(
        data: AppUpdateRequestData(
          id: appId,
          attributes: AppUpdateRequestDataAttributes(
            contentRightsDeclaration: 'DOES_NOT_USE_THIRD_PARTY_CONTENT',
          ),
        ),
      );
      var response = await app.updateApp(
        appId,
        request: request,
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取App版本',
    () async {
      var response = await app.getAppStoreVersions(appId);
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '更新App版权&发布模式',
    () async {
      String id = '662e5c29-99b3-4977-a3ea-9a9e7156e727';
      var response = await app.updateAppStoreVersion(
        id,
        request: AppStoreVersionUpdateRequest(
          data: AppStoreVersionUpdateRequestData(
            id: id,
            attributes: AppStoreVersionUpdateRequestDataAttributes(
              copyright: 'appstoreconnectapi ©',
              releaseType: 'MANUAL',
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取App Infos',
    () async {
      var response = await app.getAppInfos(appId);
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取App国际化列表',
    () async {
      var response = await app.getAppInfoLocalizations(
        '882fc28d-4d91-4bf0-9d13-44e692c4da2f',
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '更新左侧菜单App隐私政策网址',
    () async {
      String id = '3719cdd3-3b84-4119-8f65-9df52718c4fb';
      var response = await app.updateAppInfoLocalization(
        id,
        request: AppInfoLocalizationUpdateRequest(
          data: AppInfoLocalizationUpdateRequestData(
            id: id,
            attributes: AppInfoLocalizationUpdateRequestDataAttributes(
              privacyPolicyUrl: 'https://www.google.com',
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取AppStore某版本下的本地化信息列表',
    () async {
      var response = await app.getAppStoreVersionLocalizations(
        '662e5c29-99b3-4977-a3ea-9a9e7156e727',
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '更新App技术支持网址、描述、关键词',
    () async {
      String id = '1ac98314-13c7-424e-a14d-506958ee3121';
      var response = await app.updateAppStoreVersionLocalization(
        id,
        request: AppStoreVersionLocalizationUpdateRequest(
          data: AppStoreVersionLocalizationUpdateRequestData(
            id: id,
            attributes: AppStoreVersionLocalizationUpdateRequestDataAttributes(
              supportUrl: 'https://www.google.com',
              description:
                  '''The App Store Connect API is a RESTful web service that enables you to automate tasks on App Store Connect, Apple's platform for managing apps and metadata submitted to the App Store. With the App Store Connect API, you can programmatically access and update information on App Store Connect, such as creating new apps, managing app metadata, uploading app builds, managing app testers and testing groups, and more.

The App Store Connect API uses OAuth 2.0 authentication and provides endpoints for various resources, including apps, testers, users, and sales and financial reports. The API allows you to interact with these resources by sending HTTP requests and receiving responses in JSON format.

By using the App Store Connect API, developers can automate various tasks related to managing apps and metadata, streamline their workflows, and integrate App Store Connect data with their existing tools and systems.''',
              keywords: 'appstoreconnectapi',
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '创建App联系信息',
    () async {
      var response = await app.createAppStoreReviewDetail(
        request: AppStoreReviewDetailCreateRequest(
          data: AppStoreReviewDetailCreateRequestData(
            attributes: AppStoreReviewDetailCreateRequestDataAttributes(
              contactFirstName: 'Maheta',
              contactLastName: 'Dhruv',
              contactEmail: 'tester@outlook.com',
              contactPhone: '+79331111111',
              demoAccountRequired: false,
            ),
            relationships: AppStoreReviewDetailCreateRequestDataRelationships(
              appStoreVersion:
                  AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion(
                data:
                    AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersionData(
                  id: '662e5c29-99b3-4977-a3ea-9a9e7156e727',
                ),
              ),
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取App联系信息',
    () async {
      var response = await app.getAppStoreReviewDetail(
        '662e5c29-99b3-4977-a3ea-9a9e7156e727',
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '更新App联系信息',
    () async {
      String id = 'b9701efc-8c76-4b12-9ada-dcf86dc6e84a';
      var response = await app.updateAppStoreReviewDetail(
        id,
        request: AppStoreReviewDetailUpdateRequest(
          data: AppStoreReviewDetailUpdateRequestData(
            attributes: AppStoreReviewDetailUpdateRequestDataAttributes(
              contactEmail: 'appstoreconnectapi@gmail.com',
            ),
            id: id,
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取年龄分级',
    () async {
      var response = await app.getAgeRatingDeclaration(
        '882fc28d-4d91-4bf0-9d13-44e692c4da2f',
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '更新年龄分级',
    () async {
      String id = '882fc28d-4d91-4bf0-9d13-44e692c4da2f';
      var response = await app.updateAgeRatingDeclaration(
        id,
        request: AgeRatingDeclarationUpdateRequest(
          data: AgeRatingDeclarationUpdateRequestData(
            attributes: AgeRatingDeclarationUpdateRequestDataAttributes(),
            id: id,
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取所有一级分类',
    () async {
      var response = await app.getAppCategories(
        existsParent: false,
        filterPlatforms: ['IOS'],
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取所有二级分类',
    () async {
      var response = await app.getSubcategories(
        'BUSINESS',
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
      print('success: ${response.json}');
    },
  );

  test(
    '更新应用分类',
    () async {
      String id = '882fc28d-4d91-4bf0-9d13-44e692c4da2f';
      var response = await app.updateAppInfo(
        id,
        request: AppInfoUpdateRequest(
          data: AppInfoUpdateRequestData(
            id: id,
            relationships: AppInfoUpdateRequestDataRelationships(
              primaryCategory:
                  AppInfoUpdateRequestDataRelationshipsPrimaryCategory(
                data: AppInfoUpdateRequestDataRelationshipsPrimaryCategoryData(
                  id: 'ENTERTAINMENT',
                ),
              ),
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取所有截图容器',
    () async {
      var response = await app.getAppStoreVersionLocalizationScreenshotSets(
        '1ac98314-13c7-424e-a14d-506958ee3121',
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '创建截图容器位置',
    () async {
      var response = await app.creatAppScreenshotSet(
        request: AppScreenshotSetCreateRequest(
          data: AppScreenshotSetCreateRequestData(
            attributes: AppScreenshotSetCreateRequestDataAttributes(
              screenshotDisplayType: ScreenshotDisplayType.APP_IPHONE_65,
            ),
            relationships: AppScreenshotSetCreateRequestDataRelationships(
              appStoreVersionLocalization:
                  AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalization(
                data:
                    AppScreenshotSetCreateRequestDataRelationshipsAppStoreVersionLocalizationData(
                  id: '1ac98314-13c7-424e-a14d-506958ee3121',
                ),
              ),
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );

  test(
    '获取截图',
    () async {},
  );

  test(
    '上传截图',
    () async {
      File file = File(
        '/Users/iptodays/Desktop/1.png',
      );
      var response = await app.createAppScreenshot(
        request: AppScreenshotCreateRequest(
          data: AppScreenshotCreateRequestData(
            attributes: AppScreenshotCreateRequestDataAttributes(
              fileName: file.path.split('/').last,
              fileSize: file.lengthSync(),
            ),
            relationships: AppScreenshotCreateRequestDataRelationships(
              appScreenshotSet:
                  AppScreenshotCreateRequestDataRelationshipsAppScreenshotSet(
                data:
                    AppScreenshotCreateRequestDataRelationshipsAppScreenshotSetData(
                  id: '4337063a-565c-40d1-8072-e548ed5cab89',
                ),
              ),
            ),
          ),
        ),
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
      String screenshotId = response.result!.data.id;
      var a = await app.uploadAppScreenshot(
        screenshotId,
        operations: response.result!.data.attributes!.uploadOperations!,
        file: file,
      );
      print('json: ${a.json}');
      print('error: ${a.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${a.result?.toJson()}');
    },
  );

  test(
    '查询截图上传状态',
    () async {
      var response = await app.getAppScreenshot(
        '3a2c806b-74ef-4334-afc6-637fcb67e4ab',
      );
      print('error: ${response.errors?.map((e) => e.toJson()).toList()}');
      print('success: ${response.result?.toJson()}');
    },
  );
}
