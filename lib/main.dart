import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fnotes/notes_screen/NotesHomeScreen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     await Firebase.initializeApp();
//     print("Firebase Initialized Successfully");
//   } catch (e) {
//     print("Firebase Initialization Error: $e");
//   }
//   runApp(MyApp());
// }
//
Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCd0NaAwQtQYw0wZbfdJXA90Xh_zx_4hCE",
          appId: "1:792255477390:android:b72d10d3f2e435dc20bbdf",
          messagingSenderId: "792255477390",
          projectId: "flutter-project-a4a8d"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesHomeScreen(),
    );
  }
}
