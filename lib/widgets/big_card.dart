import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  final WordPair pair;

  const BigCard({super.key, required this.pair});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!
        .copyWith(color: theme.colorScheme.onPrimary);

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text('${capitalize(pair.first)} ${capitalize(pair.second)}',
            style: style),
      ),
    );
  }

  String capitalize(String text) {
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }
}
