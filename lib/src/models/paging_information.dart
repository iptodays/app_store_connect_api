class PagingInformation {
  late final PagingInformationPaging paging;

  PagingInformation.fromJson(Map<String, dynamic> json) {
    paging = PagingInformationPaging.fromJson(json['paging']);
  }

  Map<String, dynamic> toJson() {
    return {
      'paging': paging.toJson(),
    };
  }
}

class PagingInformationPaging {
  int? total;

  late final int limit;

  PagingInformationPaging.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'limit': limit,
    };
  }
}
