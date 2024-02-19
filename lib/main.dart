import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_view/constants.dart';
import 'package:notes_app_view/model/notes-model.dart';
import 'package:notes_app_view/view/notes-view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox(kHivebox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      home: const NotesAppView(),
    );
  }
}
