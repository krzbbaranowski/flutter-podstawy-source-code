import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../features/rocket_details/cubit/rocket_details_cubit.dart';
import '../features/rocket_details/data/data_sources /rockets_api.dart';
import '../features/rocket_details/domain/rockets_repository.dart';
import '../features/rocket_details/mappers/rocket_mappers.dart';

GetIt sl = GetIt.instance;

void setupServiceLocatorForSpaceXApp() async {
  sl.registerFactory<RocketDetailsCubit>(() => RocketDetailsCubit(sl(), sl()));

  sl.registerLazySingleton<RocketsAPI>(() => RocketsAPI(sl()));

  sl.registerLazySingleton<Dio>(() {
    var options = BaseOptions(
        baseUrl: "https://api.spacexdata.com/v4/",
        contentType: Headers.jsonContentType);
    var dio = Dio(options);
    return dio;
  });

  sl.registerLazySingleton<RocketsRepository>(
      () => RocketsRepository(sl(), sl()));
  sl.registerLazySingleton<RocketItemMapper>(() => RocketItemMapper());
  sl.registerLazySingleton<RocketMapper>(() => RocketMapper());
}
