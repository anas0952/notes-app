import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/notes_view_addnotes.dart/notebottomshet.dart';
import 'package:notes_app_view/widgets/notes_view_appbar/coustom-appbar.dart';
import 'package:notes_app_view/widgets/notes_view_body/listviewnotes.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const NoteBottomShet(),
            );
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            const SizedBox(
              height: 62,
            ),
            CoustomAppBar(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            const ListViewNotes()
          ]),
        ));
  }
}
