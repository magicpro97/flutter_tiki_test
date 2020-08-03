import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tiki_test/data/models/banner.dart';

class BannerSlider extends HookWidget {
  final List<Banner> banners;

  const BannerSlider({Key key, @required this.banners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bannerItem = banners.map((e) => _BannerItem(banner: e)).toList();
    final current = useState(0);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider.builder(
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
        ),
        Container(
          height: 140.0,
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
                        color:
                            index == current.value ? Colors.white : Colors.grey,
                      ),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.vertical(
            bottom:
                Radius.elliptical(MediaQuery.of(context).size.width, 100.0)),
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
