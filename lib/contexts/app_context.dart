import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class AppContext extends ChangeNotifier {
  var current = WordPair.random();

  void getNextWord() {
    current = WordPair.random();
    notifyListeners();
  }
}
