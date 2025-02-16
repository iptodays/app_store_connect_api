# app_store_connect_api

这是一个用于与 App Store Connect API 进行交互的 Dart 库。该库提供了一系列模型类，用于处理 App Store Connect API 的请求和响应。

## 功能特性

- 支持构建请求和解析响应的模型类，如 `AppStoreReviewDetailCreateRequest`、`BuildsResponse` 等。
- 提供 `fromJson` 和 `toJson` 方法，方便 JSON 数据的序列化和反序列化。

## 安装

在你的 `pubspec.yaml` 文件中添加以下依赖：

```yaml
dependencies:
  app_store_connect_api: <latest_version>
```

然后运行 `flutter pub get` 或 `dart pub get` 来安装依赖。

## 使用方法

### 创建 App Store Review Detail 请求

```dart
// 创建 AppStoreReviewDetailCreateRequestDataAttributes 对象
var attributes = AppStoreReviewDetailCreateRequestDataAttributes(
  contactEmail: 'example@example.com',
  contactFirstName: 'John',
  contactLastName: 'Doe',
  // 其他属性...
);

// 创建 AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersionData 对象
var appStoreVersionData = AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersionData(
  id: 'app_store_version_id',
);

// 创建 AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion 对象
var appStoreVersion = AppStoreReviewDetailCreateRequestDataRelationshipsAppStoreVersion(
  data: appStoreVersionData,
);

// 创建 AppStoreReviewDetailCreateRequestDataRelationships 对象
var relationships = AppStoreReviewDetailCreateRequestDataRelationships(
  appStoreVersion: appStoreVersion,
);

// 创建 AppStoreReviewDetailCreateRequestData 对象
var data = AppStoreReviewDetailCreateRequestData(
  attributes: attributes,
  relationships: relationships,
);

// 创建 AppStoreReviewDetailCreateRequest 对象
var request = AppStoreReviewDetailCreateRequest(data: data);

// 转换为 JSON
var jsonRequest = request.toJson();
```

### 解析 Builds 响应

```dart
import 'package:app_store_connect_api/src/models/builds_response.dart';

// 假设这是从 API 获取的 JSON 响应
Map<String, dynamic> jsonResponse = {
  "data": [
    {
      "id": "build_id",
      "type": "build_type",
      "attributes": {
        "expired": false,
        // 其他属性...
      }
    }
  ],
  "meta": {
    // 分页信息...
  }
};

// 解析 JSON 响应
var buildsResponse = BuildsResponse.fromJson(jsonResponse);

// 访问数据
var builds = buildsResponse.data;
var meta = buildsResponse.meta;
```

## 项目结构

项目主要包含以下文件和目录：

- `lib/src/models`: 包含各种请求和响应的模型类。
  - `app_store_review_detail_response.dart`: App Store Review Detail 响应模型。
  - `builds_response.dart`: Builds 响应模型。
  - `request/`: 包含请求相关的模型类，如 `app_store_review_detail_create_request.dart`。
- `test/`: 包含单元测试文件，如 `app_store_connect_api_test.dart`。
- `analysis_options.yaml`: Dart 分析选项配置文件。
- `CHANGELOG.md`: 项目变更日志。

## 贡献指南

如果你想为这个项目做出贡献，可以按照以下步骤进行：

1. Fork 这个仓库。
2. 创建一个新的分支：`git checkout -b feature/your-feature-name`。
3. 进行你的修改并提交：`git commit -am 'Add some feature'`。
4. 推送到你的 Fork：`git push origin feature/your-feature-name`。
5. 创建一个 Pull Request。

## 许可证

这个项目采用 [MIT 许可证](https://opensource.org/licenses/MIT)。
