import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';
import 'progress.dart';

part 'flash_sale.g.dart';

@JsonSerializable()
class FlashSale {
  final int status;
  final String url;
  final String tags;

  @JsonKey(name: 'discount_percent')
  final int discountPercent;

  @JsonKey(name: 'special_price')
  final int specialPrice;

  @JsonKey(name: 'special_from_date')
  final int specialFromDate;

  @JsonKey(name: 'from_date')
  final String fromDate;

  @JsonKey(name: 'special_to_date')
  final int specialToDate;

  final Progress progress;

  final Product product;

  FlashSale(
    this.status,
    this.url,
    this.tags,
    this.discountPercent,
    this.specialPrice,
    this.specialFromDate,
    this.fromDate,
    this.specialToDate,
    this.progress,
    this.product,
  );

  factory FlashSale.fromJson(Map<String, dynamic> json) =>
      _$FlashSaleFromJson(json);

  Map<String, dynamic> toJson() => _$FlashSaleToJson(this);
}
