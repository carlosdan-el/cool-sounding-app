import 'package:flutter/material.dart';
import 'package:cool_sounding_app/contexts/app_context.dart';
import 'package:provider/provider.dart';

import '../widgets/big_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppContext>();
    var pair = appState.current;

    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A random AWESOME name:'),
            SizedBox(height: 10),
            BigCard(pair: pair),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () => appState.getNextWord(),
                child: Text('Generate'))
          ],
        ),
      ),
    ));
  }

  Widget heading(String text) {
    return Text(text);
  }
}
