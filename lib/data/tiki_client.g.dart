// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiki_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TikiClient implements TikiClient {
  _TikiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  fetchBanners() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'https://api.tiki.vn/v2/home/banners/v2',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponse<Banner>.fromJson(_result.data, (json) => Banner.fromJson(json));
    return value;
  }

  @override
  fetchQuickLinkGroups() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'https://api.tiki.vn/shopping/v2/widgets/quick_link',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseListResponse<QuickLink>.fromJson(_result.data, (json) => QuickLink.fromJson(json));
    return value;
  }

  @override
  fetchFlashSales() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'https://api.tiki.vn/v2/widget/deals/hot',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponse<FlashSale>.fromJson(_result.data, (json) => FlashSale.fromJson(json));
    return value;
  }
}
