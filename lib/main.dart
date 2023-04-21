import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contexts/app_context.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppContext(),
      child: MaterialApp(
        title: 'Cool Sounding App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
