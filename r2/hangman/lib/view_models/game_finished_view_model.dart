import '../pages/hangman_page.dart';
import 'view_model_base.dart';

class GameFinishedViewModel extends ViewModelBase {
  Future<void> startNewGame() async {
    await navigationService.navigateToPageWithReplace(const HangmanPage());
  }
}
