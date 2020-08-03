import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injector.config.dart';

final getIt = GetIt.I;

@injectableInit
void configureDependencies() {
  getIt.registerLazySingleton(
    () => Dio()
      ..interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          request: true,
        ),
      ),
  );
  getIt.registerSingleton('');
  $initGetIt(getIt);
}
