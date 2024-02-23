import 'package:flutter/material.dart';
import 'package:notes_app_view/model/notes-model.dart';
import 'package:notes_app_view/widgets/edits-notes-view.dart';

class NotesEditApp extends StatelessWidget {
  const NotesEditApp({super.key, required this.notesModel});
  final NotesModel notesModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(
        notesModel: notesModel,
      ),
    );
  }
}
