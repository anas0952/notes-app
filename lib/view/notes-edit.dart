import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/notes_view_appbar/coustom-appbar.dart';

class NotesEditApp extends StatelessWidget {
  const NotesEditApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CoustomAppBar(),
      ],
    ));
  }
}
