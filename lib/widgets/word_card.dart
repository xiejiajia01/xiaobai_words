import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/word.dart';
import '../providers/words_provider.dart';

class WordCard extends HookConsumerWidget {
  final Word word;
  
  const WordCard({super.key, required this.word});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.05),
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${word.number}. ',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  word.word,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(width: 12),
                Text(
                  word.phonetic,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    word.isMarked ? Icons.check_circle : Icons.check_circle_outline,
                    color: word.isMarked ? Colors.green : Colors.grey,
                  ),
                  onPressed: () {
                    ref.read(wordsProvider.notifier).toggleMark(word.number);
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '${word.type} ${word.meaning}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            ...word.examples.map((example) => Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'e.g. $example',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
} 