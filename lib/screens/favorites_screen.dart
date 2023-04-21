import 'package:cool_sounding_app/contexts/app_context.dart';
import 'package:cool_sounding_app/widgets/big_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appContext = context.watch<AppContext>();

    if (appContext.favorites.isEmpty) {
      return Center(
        child: Text('No Favorites yet.'),
      );
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text('Favorites')),
      body: SafeArea(
          child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                            "You have ${appContext.favorites.length} favorites:")),
                    for (var pair in appContext.favorites)
                      ListTile(
                        leading: Icon(Icons.favorite),
                        title: Text(pair.asPascalCase),
                      )
                  ],
                ),
              ))),
    );
  }
}
