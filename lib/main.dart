import 'package:flutter/material.dart';
import 'package:my_new_project/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ).copyWith(
        scaffoldBackgroundColor: Colors.grey[850],
        primaryColor: Colors.grey[700],
        appBarTheme: AppBarTheme(
          color: Colors.grey[800],
        ),
      ),
      home: const NotesView(),
    );
  }
}
