// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'data/tiki_client.dart';
import 'home/components/banner/banner_bloc.dart';
import 'home/components/flash_sale/flash_sale_bloc.dart';
import 'home/components/quick_link/quick_link_bloc.dart';
import 'home/home_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  gh.factory<HomeBloc>(() => HomeBloc());
  gh.lazySingleton<TikiClient>(
      () => TikiClient(g<Dio>(), baseUrl: g<String>()));
  gh.factory<BannerBloc>(() => BannerBloc(g<TikiClient>()));
  gh.factory<FlashSaleBloc>(() => FlashSaleBloc(g<TikiClient>()));
  gh.factory<QuickLinkBloc>(() => QuickLinkBloc(g<TikiClient>()));
}
