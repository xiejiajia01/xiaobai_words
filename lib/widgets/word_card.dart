import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../models/word.dart';
import '../providers/words_provider.dart';

class WordCard extends HookConsumerWidget {
  final Word word;
  
  const WordCard({super.key, required this.word});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = useState(false);

    return GestureDetector(
      onTap: () => isExpanded.value = !isExpanded.value,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: word.isMarked ? const Color(0xFFE8F5E9) : Colors.white,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.05),
                word.isMarked ? const Color(0xFFE8F5E9) : Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 编号
                  SizedBox(
                    width: 40,
                    child: Text(
                      '${word.number}.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: word.isMarked ? Colors.green : Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  // 单词和音标部分
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          word.word,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: word.isMarked ? Colors.green[700] : const Color(0xFF2D0C57),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          word.phonetic,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontStyle: FontStyle.italic,
                            color: word.isMarked ? Colors.green[400] : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 标记按钮
                  Material(
                    color: Colors.transparent,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: Icon(
                          word.isMarked ? Icons.check_circle : Icons.check_circle_outline,
                          color: word.isMarked ? Colors.green : Colors.grey,
                          size: 20,
                        ),
                        onPressed: () {
                          ref.read(wordsProvider.notifier).toggleMark(word.number);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              if (isExpanded.value) ...[
                const SizedBox(height: 12),
                Text(
                  '${word.type} ${word.meaning}',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: word.isMarked ? Colors.green[700] : const Color(0xFF9B8E9D),
                  ),
                ),
                const SizedBox(height: 8),
                ...word.examples.map((example) => Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    'e.g. $example',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: word.isMarked ? Colors.green[400] : Colors.grey[600],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )),
              ],
            ],
          ),
        ),
      ),
    );
  }
} 