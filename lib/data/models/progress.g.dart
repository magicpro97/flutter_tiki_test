// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Progress _$ProgressFromJson(Map<String, dynamic> json) {
  return Progress(
    json['qty'] as int,
    json['qty_ordered'] as int,
    json['qty_remain'] as int,
    (json['percent'] as num)?.toDouble(),
    json['status'] as String,
  );
}

Map<String, dynamic> _$ProgressToJson(Progress instance) => <String, dynamic>{
      'qty': instance.qty,
      'qty_ordered': instance.qtyOrdered,
      'qty_remain': instance.qtyRemain,
      'percent': instance.percent,
      'status': instance.status,
    };
