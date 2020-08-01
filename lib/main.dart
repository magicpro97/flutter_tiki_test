import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tiki_test/home/home_bloc.dart';
import 'package:flutter_tiki_test/home/home_page.dart';
import 'package:flutter_tiki_test/data/tiki_client.dart';

import 'home/components/banner/banner_bloc.dart';
import 'home/components/flash_sale/flash_sale_bloc.dart';
import 'home/components/quick_link/quick_link_bloc.dart';

void main() {
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
        create: (_) => TikiClient(Dio()
          ..interceptors.add(LogInterceptor(
            responseBody: true,
            requestBody: true,
            request: true,
          ))),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => HomeBloc(),
            ),
            BlocProvider(
              create: (context) => BannerBloc(
                context.repository<TikiClient>(),
              ),
            ),
            BlocProvider(
              create: (context) => QuickLinkBloc(
                context.repository<TikiClient>(),
              ),
            ),
            BlocProvider(
              create: (context) => FlashSaleBloc(
                context.repository<TikiClient>(),
              ),
            ),
          ],
          child: HomePage(),
        ),
      ),
    );
  }
}
