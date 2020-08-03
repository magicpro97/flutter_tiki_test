import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/banner/banner_bloc.dart';
import 'components/flash_sale/flash_sale_bloc.dart';
import 'components/quick_link/quick_link_bloc.dart';
import 'home_bloc.dart';

class HomeMiddleware extends StatelessWidget {
  final Widget child;

  const HomeMiddleware({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<HomeBloc, HomeState>(
          cubit: context.bloc<HomeBloc>(),
          listener: (context, state) {
            final bannerBloc = context.bloc<BannerBloc>();
            final quickLinkBloc = context.bloc<QuickLinkBloc>();
            final flashSaleBloc = context.bloc<FlashSaleBloc>();

            state.maybeWhen(
              initial: () => bannerBloc.fetch(),
              bannersLoaded: (banners) => quickLinkBloc.fetch(),
              quickLinksLoaded: (quickLinks) => flashSaleBloc.fetch(),
              orElse: () {},
            );
          },
        ),
        BlocListener<BannerBloc, BannerState>(
          cubit: context.bloc<BannerBloc>(),
          listener: (context, state) {
            final homeBloc = context.bloc<HomeBloc>();
            final quickLinkBloc = context.bloc<QuickLinkBloc>();

            state.maybeWhen(
              initial: () => quickLinkBloc.fetch(),
              loaded: (banners) => homeBloc.bannerLoaded(banners),
              orElse: () {},
            );
          },
        ),
        BlocListener<QuickLinkBloc, QuickLinkState>(
          cubit: context.bloc<QuickLinkBloc>(),
          listener: (context, state) {
            final homeBloc = context.bloc<HomeBloc>();
            final flashSaleBloc = context.bloc<FlashSaleBloc>();

            state.maybeWhen(
              fail: () => flashSaleBloc.fetch(),
              loaded: (quickLinkGroup) {
                homeBloc.quickLinkLoaded(quickLinkGroup);
                flashSaleBloc.fetch();
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<FlashSaleBloc, FlashSaleState>(
          cubit: context.bloc<FlashSaleBloc>(),
          listener: (context, state) {
            final homeBloc = context.bloc<HomeBloc>();

            state.maybeWhen(
              loaded: (banners) => homeBloc.flashSalesLoaded(banners),
              orElse: () {},
            );
          },
        ),
      ],
      child: child,
    );
  }
}
