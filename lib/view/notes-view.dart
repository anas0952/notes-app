import 'package:flutter/material.dart';
import 'package:notes_app_view/constants.dart';
import 'package:notes_app_view/widgets/add-notebottomshet.dart';
import 'package:notes_app_view/widgets/coustom-appbar.dart';
import 'package:notes_app_view/widgets/listviewnotes.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => const AddNoteBottomShet());
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            SizedBox(
              height: 62,
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
