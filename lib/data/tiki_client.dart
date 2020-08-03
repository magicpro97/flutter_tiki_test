import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'models/banner.dart';
import 'models/base_response.dart';
import 'models/flash_sale.dart';
import 'models/quick_link.dart';

part 'tiki_client.g.dart';

@RestApi()
@LazySingleton()
abstract class TikiClient {
  @factoryMethod
  factory TikiClient(Dio dio, {String baseUrl}) = _TikiClient;

  @GET('https://api.tiki.vn/v2/home/banners/v2')
  Future<BaseResponse<Banner>> fetchBanners();

  @GET('https://api.tiki.vn/shopping/v2/widgets/quick_link')
  Future<BaseListResponse<QuickLink>> fetchQuickLinkGroups();

  @GET('https://api.tiki.vn/v2/widget/deals/hot')
  Future<BaseResponse<FlashSale>> fetchFlashSales();
}
