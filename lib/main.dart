import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tiki_test/data/tiki_client.dart';
import 'package:flutter_tiki_test/home/home_bloc.dart';
import 'package:flutter_tiki_test/home/home_page.dart';

import 'dependency_injector.dart';
import 'home/components/banner/banner_bloc.dart';
import 'home/components/flash_sale/flash_sale_bloc.dart';
import 'home/components/quick_link/quick_link_bloc.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiki Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RepositoryProvider(
        create: (_) => getIt.get<TikiClient>(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt.get<HomeBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt.get<BannerBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt.get<QuickLinkBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt.get<FlashSaleBloc>(),
            ),
          ],
          child: HomePage(),
        ),
      ),
    );
  }
}
