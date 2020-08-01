// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlashSale _$FlashSaleFromJson(Map<String, dynamic> json) {
  return FlashSale(
    json['status'] as int,
    json['url'] as String,
    json['tags'] as String,
    json['discount_percent'] as int,
    json['special_price'] as int,
    json['special_from_date'] as int,
    json['from_date'] as String,
    json['special_to_date'] as int,
    json['progress'] == null
        ? null
        : Progress.fromJson(json['progress'] as Map<String, dynamic>),
    json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FlashSaleToJson(FlashSale instance) => <String, dynamic>{
      'status': instance.status,
      'url': instance.url,
      'tags': instance.tags,
      'discount_percent': instance.discountPercent,
      'special_price': instance.specialPrice,
      'special_from_date': instance.specialFromDate,
      'from_date': instance.fromDate,
      'special_to_date': instance.specialToDate,
      'progress': instance.progress,
      'product': instance.product,
    };
