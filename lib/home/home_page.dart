import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tiki_test/common/hooks/refresh_controller.dart';
import 'package:flutter_tiki_test/dimen.dart';
import 'package:flutter_tiki_test/home/components/flash_sale/flash_sale_bloc.dart';
import 'package:flutter_tiki_test/home/components/flash_sale/flash_sale_pane.dart';
import 'package:flutter_tiki_test/home/components/quick_link/quick_link_bloc.dart';
import 'package:flutter_tiki_test/home/components/quick_link/quick_link_panel.dart';
import 'package:flutter_tiki_test/home/home_middleware.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'components/banner/banner_bloc.dart';
import 'components/banner/banner_slider.dart';
import 'home_bloc.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final refreshController = useRefreshController(initialRefresh: true);

    return HomeMiddleware(
      child: Scaffold(
        appBar: AppBar(
          title: Text('TIKI'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.message), onPressed: () {}),
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
          elevation: 0.0,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Tìm kiếm...',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Expanded(
                  child: SmartRefresher(
                    controller: refreshController,
                    enablePullDown: true,
                    enablePullUp: false,
                    onRefresh: () {
                      context.bloc<HomeBloc>().initial();

                      refreshController.refreshCompleted();
                    },
                    header: WaterDropHeader(),
                    child: ListView(
                      children: <Widget>[
                        BlocBuilder<BannerBloc, BannerState>(
                          cubit: context.bloc<BannerBloc>(),
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: state.maybeWhen(
                                orElse: () => Container(),
                                loading: () =>
                                    Center(child: CircularProgressIndicator()),
                                loaded: (banners) =>
                                    BannerSlider(banners: banners),
                              ),
                            );
                          },
                        ),
                        BlocBuilder<QuickLinkBloc, QuickLinkState>(
                          cubit: context.bloc<QuickLinkBloc>(),
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () => Container(),
                              loading: () =>
                                  Center(child: CircularProgressIndicator()),
                              loaded: (quickLinkGroups) => QuickLinkPanel(
                                  quickLinkGroups: quickLinkGroups),
                            );
                          },
                        ),
                        Divider(
                          height: Dimens.M,
                          color: Colors.grey[400],
                          thickness: Dimens.M,
                        ),
                        BlocBuilder<FlashSaleBloc, FlashSaleState>(
                          cubit: context.bloc<FlashSaleBloc>(),
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () => Container(),
                              loading: () =>
                                  Center(child: CircularProgressIndicator()),
                              loaded: (flashSales) =>
                                  FlashSalePane(flashSales: flashSales),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
