import 'package:intl/intl.dart';

extension PriceNum on num {
  String toPrice() {
    final formatter = NumberFormat('##,###.##', 'vi');

    return formatter.format(this);
  }
}
