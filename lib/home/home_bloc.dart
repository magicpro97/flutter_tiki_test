import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tiki_test/data/models/banner.dart';
import 'package:flutter_tiki_test/data/models/flash_sale.dart';
import 'package:flutter_tiki_test/data/models/quick_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_bloc.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  factory HomeState.initial() = _Initial;

  factory HomeState.bannersLoaded(List<Banner> banners) = _BannersLoaded;

  factory HomeState.quickLinksLoaded(List<List<QuickLink>> quickLinkGroups) =
      _QuickLinksLoaded;

  factory HomeState.flashSalesLoaded(List<FlashSale> flashSales) =
      _FlashSalesLoaded;

  factory HomeState.loadedFail() = _LoadedFail;
}

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState.initial());

  void initial() => emit(HomeState.initial());

  void bannerLoaded(List<Banner> banners) =>
      emit(HomeState.bannersLoaded(banners));

  void quickLinkLoaded(List<List<QuickLink>> quickLinkGroups) =>
      emit(HomeState.quickLinksLoaded(quickLinkGroups));

  void flashSalesLoaded(List<FlashSale> flashSales) =>
      emit(HomeState.flashSalesLoaded(flashSales));
}
