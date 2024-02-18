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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(children: [
        SizedBox(
          height: 50,
        ),
        CoustomAppBar(),
        SizedBox(
          height: 15,
        ),
        CoustomTextField(hint: 'Title'),
        CoustomTextField(
          hint: 'Content',
          maxLines: 4,
        ),
        CoustomButton(
          text: 'Edit Notes',
        )
      ]),
    );
  }
}
