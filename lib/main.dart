import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_new_project/constants.dart';
import 'package:my_new_project/cubits/cubit/add_note_cubit.dart';
import 'package:my_new_project/models/note_model.dart';
import 'package:my_new_project/simple_bloc_observer.dart';
import 'package:my_new_project/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpleBlocObserver();
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
