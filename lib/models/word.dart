import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';
part 'word.g.dart';

@freezed
class Word with _$Word {
  const factory Word({
    required int number,
    required String word,
    required String phonetic,
    required String type,
    required String meaning,
    required List<String> examples,
    @Default(false) bool isMarked,
  }) = _Word;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
} 