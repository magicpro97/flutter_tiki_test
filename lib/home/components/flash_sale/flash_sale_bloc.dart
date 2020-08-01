import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tiki_test/data/models/flash_sale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/tiki_client.dart';

part 'flash_sale_bloc.freezed.dart';

@freezed
abstract class FlashSaleState with _$FlashSaleState {
  factory FlashSaleState.initial() = _Initial;

  factory FlashSaleState.loading() = _Loading;

  factory FlashSaleState.loaded(List<FlashSale> flashSale) = _Loaded;

  factory FlashSaleState.fail() = _Fail;
}

class FlashSaleBloc extends Cubit<FlashSaleState> {
  final TikiClient _tikiClient;

  FlashSaleBloc(this._tikiClient) : super(FlashSaleState.initial());

  void fetch() {
    emit(FlashSaleState.loading());

    _tikiClient
        .fetchFlashSales()
        .then((value) => emit(FlashSaleState.loaded(value.data)))
        .catchError((error) => emit(FlashSaleState.fail()));
  }
}