import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tiki_test/home/home_middleware.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../common/hooks/refresh_controller.dart';
import 'components/appbar/custom_app_bar.dart';
import 'components/banner/banner_slider.dart';
import 'components/flash_sale/flash_sale_pane.dart';
import 'components/quick_link/quick_link_panel.dart';
import 'home_bloc.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final refreshController = useRefreshController(initialRefresh: true);

    return HomeMiddleware(
      child: Scaffold(
        body: SmartRefresher(
          controller: refreshController,
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: () {
            context.bloc<HomeBloc>().initial();

            refreshController.refreshCompleted();
          },
          header: WaterDropHeader(),
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: CustomSliverAppBar(),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    BannerSlider(),
                    QuickLinkPanel(),
                    FlashSalePane(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
