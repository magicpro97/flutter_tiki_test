// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    json['id'] as int,
    json['sku'] as String,
    json['name'] as String,
    json['url_path'] as String,
    json['price'] as int,
    json['list_price'] as int,
    json['badges'] as List,
    json['discount'] as int,
    (json['rating_average'] as num)?.toDouble(),
    json['review_count'] as int,
    json['order_count'] as int,
    json['thumbnail_url'] as String,
    json['is_visible'] as bool,
    json['is_fresh'] as bool,
    json['is_flower'] as bool,
    json['is_gift_card'] as bool,
    json['inventory'] == null
        ? null
        : Inventory.fromJson(json['inventory'] as Map<String, dynamic>),
    json['url_attendant_input_form'] as String,
    json['master_id'] as int,
    json['seller_product_id'] as int,
    json['price_prefix'] as String,
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'name': instance.name,
      'url_path': instance.urlPath,
      'price': instance.price,
      'list_price': instance.listPrice,
      'badges': instance.badges,
      'discount': instance.discount,
      'rating_average': instance.ratingAverage,
      'review_count': instance.reviewCount,
      'order_count': instance.orderCount,
      'thumbnail_url': instance.thumbnailUrl,
      'is_visible': instance.isVisible,
      'is_fresh': instance.isFresh,
      'is_flower': instance.isFlower,
      'is_gift_card': instance.isGiftCard,
      'inventory': instance.inventory,
      'url_attendant_input_form': instance.urlAttendentInputForm,
      'master_id': instance.masterId,
      'seller_product_id': instance.sellerProductId,
      'price_prefix': instance.pricePrefix,
    };
