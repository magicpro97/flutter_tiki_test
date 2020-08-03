import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tiki_test/data/models/quick_link.dart';
import 'package:flutter_tiki_test/dimen.dart';
import 'package:flutter_tiki_test/home/components/loading.dart';

import 'quick_link_bloc.dart';

class QuickLinkPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuickLinkBloc, QuickLinkState>(
      cubit: context.bloc<QuickLinkBloc>(),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          loading: () => Loading(height: 100.0),
          loaded: (quickLinkGroups) => _Panel(quickLinkGroups: quickLinkGroups),
        );
      },
    );
  }
}

class _Panel extends StatelessWidget {
  final List<List<QuickLink>> quickLinkGroups;

  const _Panel({Key key, @required this.quickLinkGroups}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...quickLinkGroups.map((e) => _ListItem(quickLinks: e)).toList(),
        Divider(
          height: Dimens.M,
          color: Colors.grey[400],
          thickness: Dimens.M,
        )
      ],
    );
  }
}

class _ListItem extends StatelessWidget {
  final List<QuickLink> quickLinks;

  const _ListItem({Key key, @required this.quickLinks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: Dimens.M),
        itemBuilder: (_, index) => _Item(
          quickLink: quickLinks[index],
        ),
        itemCount: quickLinks.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 100,
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final QuickLink quickLink;

  const _Item({Key key, @required this.quickLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: quickLink.imageUrl,
          fit: BoxFit.contain,
          height: 50,
          width: 50,
        ),
        SizedBox(height: Dimens.M),
        Text(quickLink.title),
      ],
    );
  }
}
