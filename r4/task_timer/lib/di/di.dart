import 'package:flutter_podstawy_utilities/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

import '../domain/repositories/tasks_repository.dart';
import '../features/dashboard/cubit/dashboard_cubit.dart';
import '../features/task_timer/cubit/task_timer_cubit.dart';
import '../main.dart';

GetIt sl = GetIt.instance;

void setupServiceLocatorForTimerApp() {
  sl.registerLazySingleton<NavigationService>(
      () => NavigationService(navigatorKey));

  sl.registerFactory<DashboardCubit>(() => DashboardCubit(sl()));
  sl.registerFactory<TaskTimerCubit>(() => TaskTimerCubit(sl()));

  sl.registerLazySingleton<TasksRepository>(() => TasksRepository());
}
