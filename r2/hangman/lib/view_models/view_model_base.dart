import 'package:flutter/foundation.dart';
import 'package:flutter_podstawy_utilities/services/navigation_service.dart';

import '../di/di.dart';

abstract class ViewModelBase extends ChangeNotifier {
  final NavigationService navigationService = sl<NavigationService>();
}
