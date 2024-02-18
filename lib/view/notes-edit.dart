import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/edits-notes-view.dart';

class NotesEditApp extends StatelessWidget {
  const NotesEditApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
