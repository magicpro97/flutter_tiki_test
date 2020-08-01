import 'package:json_annotation/json_annotation.dart';

part 'inventory.g.dart';

@JsonSerializable()
class Inventory {
  @JsonKey(name: 'product_virtual_type')
  final String productVirtualType;

  @JsonKey(name: 'fulfillment_type')
  final String fulfilmentType;

  Inventory(this.productVirtualType, this.fulfilmentType);

  factory Inventory.fromJson(Map<String, dynamic> json) => _$InventoryFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryToJson(this);
}