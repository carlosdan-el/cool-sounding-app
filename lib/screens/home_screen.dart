import 'package:flutter/material.dart';
import 'package:cool_sounding_app/contexts/app_context.dart';
import 'package:provider/provider.dart';

import '../widgets/big_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppContext>();
    var pair = appState.current;
    IconData icon = appState.favorites.contains(pair)
        ? Icons.favorite
        : Icons.favorite_border;

    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A random AWESOME name:'),
            SizedBox(height: 8),
            BigCard(pair: pair),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () => appState.toggleFavorite(),
                    icon: Icon(icon),
                    label: Text('Like')),
                SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () => appState.getNextWord(),
                    child: Text('Generate')),
              ],
            )
          ],
        ),
      ),
    ));
  }

  Widget heading(String text) {
    return Text(text);
  }
}
