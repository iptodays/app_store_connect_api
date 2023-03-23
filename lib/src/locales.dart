/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-03-19 15:28:10
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-03-19 15:48:55
 * @FilePath: /app_store_connect_api/lib/src/locales.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
enum AppleLocale {
  arSA,
  ca,
  zhHans,
  zhHant,
  hr,
  cs,
  da,
  nlNL,
  enAU,
  enCA,
  enGB,
  enUS,
  fi,
  frFR,
  frCA,
  deDE,
  el,
  he,
  hi,
  hu,
  id,
  it,
  ja,
  ko,
  ms,
  no,
  pl,
  ptBR,
  ptPT,
  ro,
  ru,
  sk,
  esMX,
  esES,
  sv,
  th,
  tr,
  uk,
  vi,
}

String enum2Str(AppleLocale locale) {
  String a = locale.name;
  final reg = RegExp(r'[A-Z]');
  RegExpMatch? match = reg.firstMatch(a);
  if (match != null) {
    String b = match[0]!;
    a = a.replaceFirst(b, '-$b');
  }
  return a;
}

AppleLocale? str2Enum(String val) {
  if (val.contains('-')) {
    val = val.replaceAll('-', '');
  }
  List<String> locales = AppleLocale.values.map((e) => e.name).toList();
  if (locales.contains(val)) {
    return AppleLocale.values[locales.indexOf(val)];
  }
  return null;
}
