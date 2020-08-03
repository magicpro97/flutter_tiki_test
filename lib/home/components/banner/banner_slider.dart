import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tiki_test/data/models/banner.dart';
import 'package:flutter_tiki_test/dimen.dart';
import 'package:flutter_tiki_test/home/components/loading.dart';

import 'banner_bloc.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(context),
        BlocBuilder<BannerBloc, BannerState>(
          cubit: context.bloc<BannerBloc>(),
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (banners) => _Slider(banners: banners),
              loading: () => Loading(height: 150),
              orElse: () => Container(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.vertical(
            bottom:
                Radius.elliptical(MediaQuery.of(context).size.width, 100.0)),
      ),
    );
  }
}

class _Slider extends HookWidget {
  final List<Banner> banners;

  _Slider({Key key, @required this.banners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bannerItem = banners.map((e) => _BannerItem(banner: e)).toList();
    final current = useState(0);

    return Container(
      alignment: Alignment.center,
      height: 150.0,
      padding: const EdgeInsets.fromLTRB(
        Dimens.M,
        0,
        Dimens.M,
        Dimens.M,
      ),
      child: Stack(
        children: <Widget>[
          CarouselSlider.builder(
            itemCount: banners.length,
            itemBuilder: (_, index) => bannerItem[index],
            options: CarouselOptions(
              height: 150.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              initialPage: 0,
              enableInfiniteScroll: true,
              viewportFraction: 1.0,
              onPageChanged: (int, _) => current.value = int,
            ),
          ),
          Container(
            height: 130.0,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: bannerItem
                  .asMap()
                  .keys
                  .map((index) => Text(
                        '_',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: index == current.value
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _BannerItem extends StatelessWidget {
  final Banner banner;

  const _BannerItem({Key key, @required this.banner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: CachedNetworkImage(
        imageUrl: banner.mobileUrl,
        fit: BoxFit.contain,
        placeholder: (_, __) => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
