// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordImpl _$$WordImplFromJson(Map<String, dynamic> json) => _$WordImpl(
      number: (json['number'] as num).toInt(),
      word: json['word'] as String,
      phonetic: json['phonetic'] as String,
      type: json['type'] as String,
      meaning: json['meaning'] as String,
      examples:
          (json['examples'] as List<dynamic>).map((e) => e as String).toList(),
      isMarked: json['isMarked'] as bool? ?? false,
    );

Map<String, dynamic> _$$WordImplToJson(_$WordImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'word': instance.word,
      'phonetic': instance.phonetic,
      'type': instance.type,
      'meaning': instance.meaning,
      'examples': instance.examples,
      'isMarked': instance.isMarked,
    };
