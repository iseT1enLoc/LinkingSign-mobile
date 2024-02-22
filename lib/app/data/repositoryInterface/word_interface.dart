import 'package:vsa_mobile/app/data/models/word.dart';

abstract class WordInterfaceRepository {
  Future<List<Word>> fetchWords();
  Future<Word?> updateWords(Word word);
}