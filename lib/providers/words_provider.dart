import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/word.dart';
import '../utils/word_parser.dart';

part 'words_provider.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';
}

@riverpod
class Words extends _$Words {
  @override
  Future<List<Word>> build() async {
    return WordParser.parseWordsFile();
  }

  void toggleMark(int number) {
    state.whenData((words) {
      state = AsyncData(words.map((word) {
        if (word.number == number) {
          return word.copyWith(isMarked: !word.isMarked);
        }
        return word;
      }).toList());
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