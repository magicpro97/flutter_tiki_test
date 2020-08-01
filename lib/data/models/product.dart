import 'package:freezed_annotation/freezed_annotation.dart';

import 'inventory.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final int id;

  final String sku;

  final String name;

  @JsonKey(name: 'url_path')
  final String urlPath;

  final int price;

  @JsonKey(name: 'list_price')
  final int listPrice;

  final List badges;

  final int discount;

  @JsonKey(name: 'rating_average')
  final double ratingAverage;

  @JsonKey(name: 'review_count')
  final int reviewCount;

  @JsonKey(name: 'order_count')
  final int orderCount;

  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  @JsonKey(name: 'is_visible')
  final bool isVisible;

  @JsonKey(name: 'is_fresh')
  final bool isFresh;

  @JsonKey(name: 'is_flower')
  final bool isFlower;

  @JsonKey(name: 'is_gift_card')
  final bool isGiftCard;

  final Inventory inventory;

  @JsonKey(name: 'url_attendant_input_form')
  final String urlAttendentInputForm;

  @JsonKey(name: 'master_id')
  final int masterId;

  @JsonKey(name: 'seller_product_id')
  final int sellerProductId;

  @JsonKey(name: 'price_prefix')
  final String pricePrefix;

  Product(
    this.id,
    this.sku,
    this.name,
    this.urlPath,
    this.price,
    this.listPrice,
    this.badges,
    this.discount,
    this.ratingAverage,
    this.reviewCount,
    this.orderCount,
    this.thumbnailUrl,
    this.isVisible,
    this.isFresh,
    this.isFlower,
    this.isGiftCard,
    this.inventory,
    this.urlAttendentInputForm,
    this.masterId,
    this.sellerProductId,
    this.pricePrefix,
  );


  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
