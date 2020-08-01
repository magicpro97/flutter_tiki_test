class BaseResponse<T> {
  final List<T> data;

  BaseResponse(this.data);

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final jsonData = json['data'] as List;

    return BaseResponse(jsonData.map((e) => fromJson(e)).toList());
  }
}

class BaseListResponse<T> {
  final List<List<T>> data;

  BaseListResponse(this.data);

  factory BaseListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final jsonData = json['data'] as List;
    final list = jsonData.map((e) => e as List).toList();
    final data = list.map((e) => e.map((e) => fromJson(e)).toList()).toList();

    return BaseListResponse(data);
  }
}
