import 'package:flutter/services.dart';
import '../models/word.dart';

class WordParser {
  static Future<List<Word>> parseWordsFile() async {
    try {
      final String content = await rootBundle.loadString('assets/english_words_1_2000.md');
      final List<Word> words = [];
      
      // 按单词条目分割
      final entries = content.split(RegExp(r'(?=\d+\.\s+\w+\s+\[)'));
      
      for (final entry in entries) {
        if (entry.trim().isEmpty) continue;
        
        final lines = entry.split('\n');
        if (lines.isEmpty) continue;

        // 解析第一行：序号、单词、音标、词性和含义
        final firstLine = lines[0].trim();
        final firstLineMatch = RegExp(r'(\d+)\.\s+(\w+)\s+\[([^\]]+)\]\s+(\w+\.)\s+(.+)').firstMatch(firstLine);
        
        if (firstLineMatch == null) continue;
        
        try {
          final number = int.parse(firstLineMatch.group(1)!);
          final word = firstLineMatch.group(2)!;
          final phonetic = '[${firstLineMatch.group(3)!}]';
          final type = firstLineMatch.group(4)!;
          final meaning = firstLineMatch.group(5)!;

          // 收集例句
          final examples = <String>[];
          for (final line in lines) {
            final trimmedLine = line.trim();
            if (trimmedLine.startsWith('e.g.')) {
              examples.add(trimmedLine.substring(4).trim());
            }
          }

          if (examples.isNotEmpty) {
            words.add(Word(
              number: number,
              word: word,
              phonetic: phonetic,
              type: type,
              meaning: meaning,
              examples: examples,
            ));
          }
        } catch (e) {
          print('Error parsing entry: $firstLine');
          print('Error: $e');
          continue;
        }
      }
      
      print('Parsed ${words.length} words successfully');
      return words;
    } catch (e) {
      print('Error parsing words file: $e');
      rethrow;
    }
  }
} 