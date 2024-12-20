// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Word _$WordFromJson(Map<String, dynamic> json) {
  return _Word.fromJson(json);
}

/// @nodoc
mixin _$Word {
  int get number => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get phonetic => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;
  List<String> get examples => throw _privateConstructorUsedError;
  bool get isMarked => throw _privateConstructorUsedError;

  /// Serializes this Word to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordCopyWith<Word> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCopyWith<$Res> {
  factory $WordCopyWith(Word value, $Res Function(Word) then) =
      _$WordCopyWithImpl<$Res, Word>;
  @useResult
  $Res call(
      {int number,
      String word,
      String phonetic,
      String type,
      String meaning,
      List<String> examples,
      bool isMarked});
}

/// @nodoc
class _$WordCopyWithImpl<$Res, $Val extends Word>
    implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? word = null,
    Object? phonetic = null,
    Object? type = null,
    Object? meaning = null,
    Object? examples = null,
    Object? isMarked = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      examples: null == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isMarked: null == isMarked
          ? _value.isMarked
          : isMarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordImplCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$$WordImplCopyWith(
          _$WordImpl value, $Res Function(_$WordImpl) then) =
      __$$WordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String word,
      String phonetic,
      String type,
      String meaning,
      List<String> examples,
      bool isMarked});
}

/// @nodoc
class __$$WordImplCopyWithImpl<$Res>
    extends _$WordCopyWithImpl<$Res, _$WordImpl>
    implements _$$WordImplCopyWith<$Res> {
  __$$WordImplCopyWithImpl(_$WordImpl _value, $Res Function(_$WordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? word = null,
    Object? phonetic = null,
    Object? type = null,
    Object? meaning = null,
    Object? examples = null,
    Object? isMarked = null,
  }) {
    return _then(_$WordImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      examples: null == examples
          ? _value._examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isMarked: null == isMarked
          ? _value.isMarked
          : isMarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordImpl implements _Word {
  const _$WordImpl(
      {required this.number,
      required this.word,
      required this.phonetic,
      required this.type,
      required this.meaning,
      required final List<String> examples,
      this.isMarked = false})
      : _examples = examples;

  factory _$WordImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordImplFromJson(json);

  @override
  final int number;
  @override
  final String word;
  @override
  final String phonetic;
  @override
  final String type;
  @override
  final String meaning;
  final List<String> _examples;
  @override
  List<String> get examples {
    if (_examples is EqualUnmodifiableListView) return _examples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examples);
  }

  @override
  @JsonKey()
  final bool isMarked;

  @override
  String toString() {
    return 'Word(number: $number, word: $word, phonetic: $phonetic, type: $type, meaning: $meaning, examples: $examples, isMarked: $isMarked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            const DeepCollectionEquality().equals(other._examples, _examples) &&
            (identical(other.isMarked, isMarked) ||
                other.isMarked == isMarked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, word, phonetic, type,
      meaning, const DeepCollectionEquality().hash(_examples), isMarked);

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordImplCopyWith<_$WordImpl> get copyWith =>
      __$$WordImplCopyWithImpl<_$WordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordImplToJson(
      this,
    );
  }
}

abstract class _Word implements Word {
  const factory _Word(
      {required final int number,
      required final String word,
      required final String phonetic,
      required final String type,
      required final String meaning,
      required final List<String> examples,
      final bool isMarked}) = _$WordImpl;

  factory _Word.fromJson(Map<String, dynamic> json) = _$WordImpl.fromJson;

  @override
  int get number;
  @override
  String get word;
  @override
  String get phonetic;
  @override
  String get type;
  @override
  String get meaning;
  @override
  List<String> get examples;
  @override
  bool get isMarked;

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordImplCopyWith<_$WordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
