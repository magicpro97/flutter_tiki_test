import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiki_test/data/models/flash_sale.dart';
import 'package:flutter_tiki_test/dimen.dart';
import 'package:shimmer/shimmer.dart';
import '../.../../../../common/extension.dart';

class FlashSalePane extends StatelessWidget {
  final List<FlashSale> flashSales;

  const FlashSalePane({Key key, @required this.flashSales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(Dimens.M),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Hot Deal',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.orange,
                      highlightColor: Colors.white,
                      child: Text(
                        '⚡',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Text(
                      'Hôm Nay',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                Text(
                  'XEM THÊM',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 160.0,
            child: ListView.builder(
              itemCount: flashSales.length,
              itemBuilder: (_, index) => _Item(
                flashSale: flashSales[index],
              ),
              itemExtent: 130.0,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final FlashSale flashSale;

  const _Item({Key key, @required this.flashSale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: flashSale.product.thumbnailUrl,
              fit: BoxFit.contain,
              height: 100,
              width: 100,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.M,
                vertical: Dimens.S,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(Dimens.S),
              ),
              child: Text(
                '-${flashSale.discountPercent}%',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: Dimens.M),
        Text(
          '${flashSale.specialPrice.toPrice()} đ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.M),
          child: _ProgressBar(flashSale: flashSale),
        ),
      ],
    );
  }
}

class _ProgressBar extends StatelessWidget {
  final FlashSale flashSale;

  const _ProgressBar({Key key, @required this.flashSale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percent = 100 - flashSale.progress.percent;

    return Stack(
      children: [
        Container(
          height: Dimens.L,
          margin: const EdgeInsets.only(top: Dimens.M),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.M),
            color: Colors.red[200],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.M),
                ),
                alignment: Alignment.centerLeft,
                child: LayoutBuilder(builder: (_, constraints) {
                  return Container(
                    alignment: Alignment.centerRight,
                    width: (constraints.maxWidth * percent) / 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.M),
                      color: Colors.red,
                    ),
                  );
                }),
              ),
              SizedBox.expand(
                child: Text(
                  getLabel(flashSale.progress.qtyOrdered),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        if (percent > 50)
          CachedNetworkImage(
            imageUrl:
                'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/fire_1f525.png',
            fit: BoxFit.contain,
            height: 20,
            width: 20,
          ),
      ],
    );
  }

  String getLabel(int qtyOrder) {
    switch (qtyOrder) {
      case 0:
        return "Vừa mở bán";
      default:
        return "Đã bán $qtyOrder";
    }
  }
}
