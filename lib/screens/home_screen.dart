import 'package:flutter/material.dart';
import 'package:cool_sounding_app/contexts/app_context.dart';
import 'package:provider/provider.dart';

import '../widgets/big_card.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appContext = context.watch<AppContext>();
    var pair = appContext.current;
    IconData icon = appContext.favorites.contains(pair)
        ? Icons.favorite
        : Icons.favorite_border;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text('Home'),
        ),
        body: SafeArea(
          child: Container(
            color: Theme.of(context).colorScheme.primaryContainer,
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
                          onPressed: () => appContext.toggleFavorite(),
                          icon: Icon(icon),
                          label: Text('Like')),
                      SizedBox(width: 16),
                      ElevatedButton(
                          onPressed: () => appContext.getNextWord(),
                          child: Text('Generate')),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FavoritesScreen()))
                              },
                          child: Text('View Favorites'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget heading(String text) {
    return Text(text);
  }
}
