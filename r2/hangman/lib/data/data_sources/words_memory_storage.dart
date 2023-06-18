import 'words_local_source.dart';

class WordsMemoryStorage implements WordsLocalSource {
  final List<String> _words = [
    "Alabaster",
    "Puzzle",
    // "Slimak",
    // "Gniazdo",
    // "Telefon",
    // "Okno",
    // "Komputer",
  ];

  WordsMemoryStorage() {
    _words.shuffle();
  }

  @override
  List<String> getWords() {
    return _words;
  }
}
