import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/word.dart';
import '../utils/word_parser.dart';

part 'words_provider.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';
}

@Riverpod(keepAlive: true)
class Words extends _$Words {
  @override
  Future<List<Word>> build() async {
    return WordParser.parseWordsFile();
  }

  void toggleMark(int number) {
    state.whenData((words) {
      final index = words.indexWhere((word) => word.number == number);
      if (index != -1) {
        final newWords = List<Word>.from(words);
        newWords[index] = newWords[index].copyWith(isMarked: !newWords[index].isMarked);
        state = AsyncData(newWords);
      }
    });
  }
}

@riverpod
Future<List<Word>> filteredWords(FilteredWordsRef ref) async {
  final query = ref.watch(searchQueryProvider);
  final words = await ref.watch(wordsProvider.future);
  
  if (query.isEmpty) {
    return words;
  }
  
  return words.where((word) => 
    word.word.toLowerCase().contains(query.toLowerCase())
  ).toList();
} 