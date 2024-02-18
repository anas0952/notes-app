import 'package:flutter/material.dart';

import 'package:notes_app_view/widgets/notes_view_addnotes.dart/cousstome-textfailed.dart';
import 'package:notes_app_view/widgets/notes_view_addnotes.dart/coustom-button.dart';

class NoteBottomShet extends StatelessWidget {
  const NoteBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      padding: const EdgeInsets.all(10.0),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            //textFailed Create
            CoustomTextField(
              hint: 'Title',
            ),

            CoustomTextField(
              hint: 'Content',
              maxLines: 4,
            ),
            SizedBox(
              height: 60,
            ),
            CoustomButton(
              text: 'Add Notes',
            )
          ],
        ),
      ),
    );
  }
}
