import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tiki_test/data/models/banner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/tiki_client.dart';

part 'banner_bloc.freezed.dart';

@freezed
abstract class BannerState with _$BannerState {
  factory BannerState.initial() = _Initial;

  factory BannerState.loading() = _Loading;

  factory BannerState.loaded(List<Banner> banners) = _Loaded;

  factory BannerState.fail() = _Fail;
}

@Injectable()
class BannerBloc extends Cubit<BannerState> {
  final TikiClient _tikiClient;

  BannerBloc(this._tikiClient) : super(BannerState.initial());

  void fetch() {
    emit(BannerState.loading());

    _tikiClient
        .fetchBanners()
        .then((value) => emit(BannerState.loaded(value.data)))
        .catchError((error) => emit(BannerState.fail()));
  }
}