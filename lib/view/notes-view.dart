import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/coustom-appbar.dart';
import 'package:notes_app_view/widgets/coustom-notesview.dart';
import 'package:notes_app_view/widgets/listviewnotes.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        CoustomAppBar(),
        SizedBox(
          height: 15,
        ),
        ListViewNotes()
      ]),
    ));
  }
}
