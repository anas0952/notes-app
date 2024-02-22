import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_view/cubits/notes_view/notes_cubit.dart';
import 'package:notes_app_view/widgets/notebottomshet.dart';
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
              isScrollControlled: true,
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
              title: 'Notes View ',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            const Expanded(
              child: ListViewNotes(),
            )
          ]),
        ));
  }
}
