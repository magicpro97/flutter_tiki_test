import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tiki_test/dimen.dart';

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final offset = shrinkOffset + 1;

    // This spacerWidth will be scale by shrinkOffset
    // final spacerWidth = shrinkOffset * 0.6;

    final spacerWidth = shrinkOffset > 0 ? Dimens.XXL2 : 0.0;
    final heightScale = Dimens.XXL * (1 / offset);
    final spacerHeight = heightScale > Dimens.L ? heightScale : Dimens.L;

    log(shrinkOffset.toString());

    return Stack(
      children: <Widget>[
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              color: Colors.blue,
            )),
        SafeArea(
          child: Container(
            color: Colors.blue,
            width: screenWidth,
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  margin:
                      const EdgeInsets.symmetric(vertical: Dimens.L + Dimens.M),
                  child: Opacity(
                    opacity: 1 / offset,
                    child: Text(
                      'TIKI',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      width: screenWidth,
                      margin: EdgeInsets.only(top: spacerHeight),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: Dimens.M),
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
                          ),
                          SizedBox(width: spacerWidth),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Dimens.L),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 148.0;

  @override
  double get minExtent => kToolbarHeight + 48;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
