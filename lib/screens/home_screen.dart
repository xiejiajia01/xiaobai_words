import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../widgets/word_card.dart';
import '../providers/words_provider.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final filteredWords = ref.watch(filteredWordsProvider);
    final scrollController = useScrollController(keepScrollOffset: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('小白单词'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: '搜索单词...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },
            ),
          ),
          Expanded(
            child: filteredWords.when(
              data: (words) => ListView.builder(
                controller: scrollController,
                key: const PageStorageKey('wordsList'),
                itemCount: words.length,
                itemBuilder: (context, index) => WordCard(
                  word: words[index],
                  key: ValueKey('word_${words[index].number}'),
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stack) => Center(
                child: Text('加载失败: $error'),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 