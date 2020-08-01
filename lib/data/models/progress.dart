import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress.g.dart';

@JsonSerializable()
class Progress {
  final int qty;

  @JsonKey(name: 'qty_ordered')
  final int qtyOrdered;

  @JsonKey(name: 'qty_remain')
  final int qtyRemain;

  final double percent;

  final String status;

  Progress(
    this.qty,
    this.qtyOrdered,
    this.qtyRemain,
    this.percent,
    this.status,
  );


  factory Progress.fromJson(Map<String, dynamic> json) => _$ProgressFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressToJson(this);
}
