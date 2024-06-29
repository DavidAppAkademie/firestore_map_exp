import 'package:firebase_core/firebase_core.dart';
import 'package:firestore_map_exp/firebase_options.dart';
import 'package:firestore_map_exp/src/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}
