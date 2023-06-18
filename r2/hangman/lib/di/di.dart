import 'package:flutter_podstawy_utilities/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

import '../data/data_sources/words_local_source.dart';
import '../data/data_sources/words_memory_storage.dart';
import '../main.dart';
import '../repositories /words_repository.dart';
import '../view_models/game_finished_view_model.dart';
import '../view_models/game_view_model.dart';

GetIt sl = GetIt.instance;

void setupServiceLocatorForHangmanApp() {
  sl.registerFactory<GameViewModel>(() => GameViewModel(sl()));
  sl.registerFactory<GameFinishedViewModel>(() => GameFinishedViewModel());

  sl.registerLazySingleton<WordsLocalSource>(() => WordsMemoryStorage());
  sl.registerLazySingleton<WordsRepository>(() => WordsRepository(sl()));

  sl.registerLazySingleton<NavigationService>(
      () => NavigationService(navigatorKey));
}
