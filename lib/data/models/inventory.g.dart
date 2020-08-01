// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inventory _$InventoryFromJson(Map<String, dynamic> json) {
  return Inventory(
    json['product_virtual_type'] as String,
    json['fulfillment_type'] as String,
  );
}

Map<String, dynamic> _$InventoryToJson(Inventory instance) => <String, dynamic>{
      'product_virtual_type': instance.productVirtualType,
      'fulfillment_type': instance.fulfilmentType,
    };
