import 'package:firestore_map_exp/src/features/presentation/user_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
        home: const SafeArea(
          child: UserScreen(),
        ));
  }
}
