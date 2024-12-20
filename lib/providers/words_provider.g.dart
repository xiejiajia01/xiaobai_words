// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'words_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredWordsHash() => r'662a743bbddee2165883c1853894f5c312950cf4';

/// See also [filteredWords].
@ProviderFor(filteredWords)
final filteredWordsProvider = AutoDisposeFutureProvider<List<Word>>.internal(
  filteredWords,
  name: r'filteredWordsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredWordsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FilteredWordsRef = AutoDisposeFutureProviderRef<List<Word>>;
String _$searchQueryHash() => r'ce3be9c2b333fa07564684734de457031f91ca8b';

/// See also [SearchQuery].
@ProviderFor(SearchQuery)
final searchQueryProvider =
    AutoDisposeNotifierProvider<SearchQuery, String>.internal(
  SearchQuery.new,
  name: r'searchQueryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchQueryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchQuery = AutoDisposeNotifier<String>;
String _$wordsHash() => r'5495aed13ddddc3162922322cea3a9a10d9df37e';

/// See also [Words].
@ProviderFor(Words)
final wordsProvider = AsyncNotifierProvider<Words, List<Word>>.internal(
  Words.new,
  name: r'wordsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$wordsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Words = AsyncNotifier<List<Word>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
