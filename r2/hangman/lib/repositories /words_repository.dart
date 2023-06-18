import '../data/data_sources/words_local_source.dart';

class WordsRepository {
  final WordsLocalSource wordsLocalSource;

  WordsRepository(this.wordsLocalSource);

  String getWord(int index) {
    final words = wordsLocalSource.getWords();

    if (index >= words.length) {
      return "";
    }
    return words[index];
  }

  int get wordsCount {
    final words = wordsLocalSource.getWords();
    return words.length;
  }
}
