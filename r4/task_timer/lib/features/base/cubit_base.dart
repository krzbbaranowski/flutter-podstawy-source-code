import 'package:bloc/bloc.dart';
import 'package:flutter_podstawy_utilities/services/navigation_service.dart';

import '../../di/di.dart';

abstract class CubitBase<State> extends Cubit<State> {
  final NavigationService navigationService = sl();

  CubitBase(super.initialState);
}
