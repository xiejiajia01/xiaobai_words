import 'package:flutter/services.dart';
import '../models/word.dart';

class WordParser {
  static Future<List<Word>> parseWordsFile() async {
    try {
      final String content = await rootBundle.loadString('assets/english_words_1_2000.md');
      final List<Word> words = [];
      
      // 使用更精确的正则表达式匹配单词条目
      final pattern = RegExp(
        r'(\d+)\.\s+(\w+)\s+\[([^\]]+)\]\s+(\w+\.)\s+([^\n]+)',
        multiLine: true,
      );
      
      final matches = pattern.allMatches(content);
      
      for (final match in matches) {
        try {
          final number = int.parse(match.group(1)!);
          final word = match.group(2)!;
          final phonetic = '[${match.group(3)!}]';
          final type = match.group(4)!;
          final meaning = match.group(5)!;
          
          // 获取当前匹配后的内容，直到下一个编号开始
          final startIndex = match.end;
          final nextMatch = matches.firstWhere(
            (m) => int.parse(m.group(1)!) == number + 1,
            orElse: () => match,
          );
          final endIndex = nextMatch == match ? content.length : nextMatch.start;
          final exampleContent = content.substring(startIndex, endIndex);
          
          // 解析例句
          final examples = <String>[];
          final examplePattern = RegExp(r'e\.g\.\s+([^\n]+)');
          for (final example in examplePattern.allMatches(exampleContent)) {
            if (example.group(1)!.trim().isNotEmpty) {
              examples.add(example.group(1)!.trim());
            }
          }

          words.add(Word(
            number: number,
            word: word,
            phonetic: phonetic,
            type: type,
            meaning: meaning,
            examples: examples,
          ));
        } catch (e) {
          print('Error parsing word entry: ${match.group(0)}');
          print('Error: $e');
          continue;
        }
      }
      
      // 按编号排序
      words.sort((a, b) => a.number.compareTo(b.number));
      
      print('Successfully parsed ${words.length} words');
      return words;
    } catch (e) {
      print('Error parsing words file: $e');
      rethrow;
    }
  }
} 