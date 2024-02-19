import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/notes_view_addnotes.dart/cousstome-textfailed.dart';
import 'package:notes_app_view/widgets/notes_view_addnotes.dart/coustom-button.dart';
import 'package:notes_app_view/widgets/notes_view_appbar/coustom-appbar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        CoustomAppBar(
          title: 'Edits Notes ',
          icon: const Icon(Icons.check),
          onPressed: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        const CoustomTextField(
          hint: 'Title',
        ),
        const CoustomTextField(
          hint: 'Content',
          maxLines: 4,
        ),
        CoustomButton(
          text: 'Edit Notes',
          onTap: () {},
        )
      ]),
    );
  }
}
